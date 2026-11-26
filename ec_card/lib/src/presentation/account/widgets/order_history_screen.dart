import 'package:dio/dio.dart';
import 'package:ec_card_app/src/domain/venue/venue_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/core/a11y/semantic_labels.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:ec_card_app/src/presentation/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class _OrderHistoryLoadException implements Exception {
  const _OrderHistoryLoadException(this.message);

  final String message;
}

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  late final Future<List<_OrderHistoryItem>> _ordersFuture;

  @override
  void initState() {
    super.initState();
    _ordersFuture = _fetchOrderHistory();
  }

  Future<List<_OrderHistoryItem>> _fetchOrderHistory() async {
    try {
      final response = await getIt<VenueAPIService>().orderHistoryAPI();
      appLog('Order history response: ${response.data}');

      if (response.statusCode != 200) {
        throw _OrderHistoryLoadException(_extractMessage(response.data));
      }

      final rawList = _extractOrderList(response.data);

      return rawList
          .map((item) {
            if (item is Map) {
              return _OrderHistoryItem.fromJson(
                Map<String, dynamic>.from(item),
              );
            }
            if (item is List) {
              return _OrderHistoryItem.fromRows(item);
            }
            return null;
          })
          .whereType<_OrderHistoryItem>()
          .toList();
    } on DioException catch (error) {
      appLog('Order history error: ${error.response?.data ?? error}');
      throw _OrderHistoryLoadException(
        _extractMessage(error.response?.data),
      );
    }
  }

  List<dynamic> _extractOrderList(dynamic data) {
    if (data is List) {
      return data;
    }

    if (data is! Map) {
      return const [];
    }

    final map = Map<String, dynamic>.from(data);
    final candidates = [
      map['data'],
      map['result'],
      map['response'],
      map['body'],
      map['records'],
      map['userTransactions'],
      map['orders'],
      map['list'],
      map['orderHistory'],
      map['orderList'],
      map['history'],
    ];

    for (final candidate in candidates) {
      if (candidate is List) {
        return candidate;
      }
      final nestedList = _extractOrderList(candidate);
      if (nestedList.isNotEmpty) {
        return nestedList;
      }
    }

    return const [];
  }

  String _extractMessage(dynamic data) {
    if (data is! Map) {
      return '';
    }

    final map = Map<String, dynamic>.from(data);
    for (final key in ['message', 'error']) {
      final value = map[key];
      if (value is String && value.trim().isNotEmpty) {
        return value.trim();
      }
    }

    final nested = _extractMessage(map['data']);
    return nested;
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: localizations.orderHistory,
        showBackButton: true,
      ),
      body: FutureBuilder<List<_OrderHistoryItem>>(
        future: _ordersFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            final error = snapshot.error;
            final message =
                error is _OrderHistoryLoadException && error.message.isNotEmpty
                    ? error.message
                    : localizations.failedToLoadOrderHistory;
            return _HistoryMessage(
              message: message,
            );
          }

          final orders = snapshot.data ?? [];
          if (orders.isEmpty) {
            return _HistoryMessage(message: localizations.noOrdersFound);
          }

          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            itemCount: orders.length,
            separatorBuilder: (_, __) => SizedBox(height: 12.h),
            itemBuilder: (context, index) {
              return _OrderHistoryCard(
                order: orders[index],
                number: orders.length - index,
              );
            },
          );
        },
      ),
    );
  }
}

class _HistoryMessage extends StatelessWidget {
  const _HistoryMessage({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}

class _OrderHistoryCard extends StatelessWidget {
  const _OrderHistoryCard({
    required this.order,
    required this.number,
  });

  final _OrderHistoryItem order;
  final int number;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final dateText = order.formattedDate(context);
    final timeText = order.formattedTime(context);

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: Padding(
        padding: EdgeInsets.all(14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              order.title.isNotEmpty
                  ? order.title
                  : '${localizations.orderHistory} #$number',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: 10.h),
            for (final entry in order.details.asMap().entries)
              _DetailRow(
                label: entry.value.label,
                // The backend returns the transaction time already
                // formatted in English 12-hour "AM/PM" style regardless of
                // locale. Re-render just that value locally so it follows
                // the selected language's date/time convention like the
                // rest of the screen.
                value: entry.key == order.transactionTimeIndex &&
                        order.orderDate != null
                    ? '${order.formattedDate(context)} ${order.formattedTime(context)}'
                        .trim()
                    : entry.value.value,
              ),
            if (order.details.isEmpty && order.venueName.isNotEmpty)
              _DetailRow(
                label: localizations.venueNameLabel,
                value: order.venueName,
              ),
            if (order.details.isEmpty && dateText.isNotEmpty)
              _DetailRow(
                label: localizations.orderDateLabel,
                value: dateText,
              ),
            if (order.details.isEmpty && timeText.isNotEmpty)
              _DetailRow(
                label: localizations.orderTimeLabel,
                value: timeText,
              ),
            if (order.details.isEmpty && order.status.isNotEmpty)
              _DetailRow(
                label: localizations.orderStatusLabel,
                value: order.status,
              ),
            if (order.details.isEmpty && order.address.isNotEmpty)
              _DetailRow(
                label: localizations.deliveryAddressLabel,
                value: order.address,
              ),
          ],
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    // Announce the pair as one node ("Venue name, The Bell") instead of
    // letting the label and value surface as separate elements — the
    // trailing colon on the label otherwise reaches a screen reader as its
    // own item and is read out as "colon".
    return Semantics(
      container: true,
      excludeSemantics: true,
      label: semanticLabelFor(label, value),
      child: Padding(
        padding: EdgeInsets.only(bottom: 6.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 120.w,
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 13.sp,
                ),
              ),
            ),
            Expanded(
              child: Text(
                value,
                style: TextStyle(
                  color: black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OrderHistoryItem {
  const _OrderHistoryItem({
    required this.title,
    required this.venueName,
    required this.status,
    required this.address,
    required this.orderDate,
    required this.details,
    this.transactionTimeIndex,
  });

  final String title;
  final String venueName;
  final String status;
  final String address;
  final DateTime? orderDate;
  final List<_OrderHistoryDetail> details;
  final int? transactionTimeIndex;

  factory _OrderHistoryItem.fromJson(Map<String, dynamic> json) {
    final product = _asMap(json['product']);
    final venue = _asMap(json['venue']);
    final delivery = _asMap(json['deliveryAddress'] ?? json['address']);

    return _OrderHistoryItem(
      title: _firstString([
        json['productName'],
        json['name'],
        product['name'],
        product['productName'],
      ]),
      venueName: _firstString([
        json['venueName'],
        json['storeName'],
        venue['name'],
        venue['storeName'],
      ]),
      status: _firstString([
        json['status'],
        json['orderStatus'],
      ]),
      address: _formatAddress(delivery, json),
      orderDate: _parseDate(_firstString([
        json['orderDate'],
        json['orderTime'],
        json['createdAt'],
        json['created_at'],
        json['date'],
      ])),
      details: const [],
    );
  }

  factory _OrderHistoryItem.fromRows(List<dynamic> rows) {
    final details = rows
        .whereType<Map>()
        .map((row) => _OrderHistoryDetail.fromJson(
              Map<String, dynamic>.from(row),
            ))
        .where((detail) => detail.label.isNotEmpty || detail.value.isNotEmpty)
        .toList();

    final transactionTimeIndex =
        _indexFor(details, 'Transaction Time') ?? (details.isNotEmpty ? 0 : null);
    final transactionTime =
        transactionTimeIndex != null ? details[transactionTimeIndex].value : '';
    final status = _valueFor(details, 'Online Order Status') ??
        _valueFor(details, 'Status') ??
        '';
    final venueName = _valueFor(details, 'Store Name') ??
        _valueFor(details, 'KIOSK Name') ??
        '';
    return _OrderHistoryItem(
      // "Online Order" itself is a yes/no flag in the raw data, true on
      // every row that has it — using it as a title fallback gave every
      // order in the list the identical literal string "Online Order"
      // whenever a venue name was missing, which a screen reader user
      // browsing by heading can't tell apart (BrowserStack: "Duplicate
      // Accessibility Label on Screen", WCAG 2.2-4.1.2). Falling through to
      // status, then to the per-card "#$number" in _OrderHistoryCard,
      // keeps every title distinct.
      title: _firstString([
        venueName,
        status,
      ]),
      venueName: '',
      status: '',
      address: '',
      orderDate: _parseDate(transactionTime),
      details: details,
      transactionTimeIndex: transactionTimeIndex,
    );
  }

  static String? _valueFor(List<_OrderHistoryDetail> details, String key) {
    for (final detail in details) {
      if (detail.label.toLowerCase() == key.toLowerCase()) {
        return detail.value;
      }
    }
    return null;
  }

  static int? _indexFor(List<_OrderHistoryDetail> details, String key) {
    for (var i = 0; i < details.length; i++) {
      if (details[i].label.toLowerCase() == key.toLowerCase()) {
        return i;
      }
    }
    return null;
  }

  String formattedDate(BuildContext context) {
    if (orderDate == null) {
      return '';
    }
    return DateFormat(
      'dd-MM-yyyy',
      safeDateFormatLocale(Localizations.localeOf(context).languageCode),
    ).format(orderDate!.toLocal());
  }

  String formattedTime(BuildContext context) {
    if (orderDate == null) {
      return '';
    }
    // DateFormat.jm resolves to each locale's own time convention (12-hour
    // with AM/PM for English, 24-hour for most others) instead of forcing
    // the English 12-hour "hh:mm a" pattern on every language.
    return DateFormat.jm(
      safeDateFormatLocale(Localizations.localeOf(context).languageCode),
    ).format(orderDate!.toLocal());
  }

  static Map<String, dynamic> _asMap(dynamic value) {
    if (value is Map) {
      return Map<String, dynamic>.from(value);
    }
    return <String, dynamic>{};
  }

  static String _firstString(List<dynamic> values) {
    for (final value in values) {
      if (value == null) {
        continue;
      }
      final text = value.toString().trim();
      if (text.isNotEmpty) {
        return text;
      }
    }
    return '';
  }

  static DateTime? _parseDate(String value) {
    if (value.isEmpty) {
      return null;
    }
    return DateTime.tryParse(value) ??
        DateFormat('dd-MM-yyyy hh:mm a').tryParse(value);
  }

  static String _formatAddress(
    Map<String, dynamic> delivery,
    Map<String, dynamic> root,
  ) {
    final addressParts = [
      _firstString([delivery['street'], root['street']]),
      _firstString([delivery['addressLineTwo'], root['addressLineTwo']]),
      _firstString([delivery['city'], root['city'], root['townCity']]),
      _firstString([delivery['postcode'], root['postcode']]),
    ].where((part) => part.isNotEmpty).toList();

    if (addressParts.isNotEmpty) {
      return addressParts.join(', ');
    }

    return _firstString([root['deliveryAddress'], root['address']]);
  }
}

class _OrderHistoryDetail {
  const _OrderHistoryDetail({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  factory _OrderHistoryDetail.fromJson(Map<String, dynamic> json) {
    return _OrderHistoryDetail(
      label: _OrderHistoryItem._firstString([json['key'], json['label']]),
      value: _OrderHistoryItem._firstString([json['value']]),
    );
  }
}
