import 'package:ec_card_app/src/application/venue/venue_cubit.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/venue/widgets/online_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/venue/model/entity/venue_products_entity.dart';

class SearchProductScreen extends StatefulWidget {
  const SearchProductScreen({Key? key}) : super(key: key);

  @override
  State<SearchProductScreen> createState() => _SearchProductScreenState();
}

class _SearchProductScreenState extends State<SearchProductScreen> {
  List<ProductEntity> _searchResults = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final value = _controller.text.trim();
      final products = context.read<VenueCubit>().state.productsList;
      if (value.length > 2) {
        setState(() {
          _searchResults = products
              .where((item) =>
                  item.name.toLowerCase().contains(value.toLowerCase()) ||
                  item.description.toLowerCase().contains(value.toLowerCase()))
              .toList();
        });
      } else {
        setState(() {
          _searchResults.clear();
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VenueCubit, VenueState>(
      builder: (context, state) {
        final localizations = AppLocalizations.of(context)!;
        final products = state.productsList;
        final message = state.productsMessage == 'Failed to load products.'
            ? localizations.failedToLoadProducts
            : state.productsMessage == 'No Products Available'
                ? localizations.noProductsFound
                : state.productsMessage.isNotEmpty
                    ? state.productsMessage
                    : localizations.noProductsFound;

        final isSearching = _controller.text.trim().length > 2;
        final displayList = isSearching ? _searchResults : products;

        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 2,
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: localizations.search,
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    suffixIcon: _controller.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear, color: Colors.grey),
                            onPressed: () {
                              _controller.clear();
                              FocusScope.of(context).unfocus();
                            },
                          )
                        : null,
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: state.isProductsLoading
                  ? const Center(child: CircularProgressIndicator())
                  : displayList.isEmpty
                      ? Center(
                          child: Text(
                            message,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.grey[600],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      : ListView.separated(
                          padding: EdgeInsets.only(bottom: 20.h),
                          itemCount: displayList.length,
                          separatorBuilder: (_, __) => SizedBox(height: 4.h),
                          itemBuilder: (context, index) {
                            return OnlineCard(product: displayList[index]);
                          },
                        ),
            ),
          ],
        );
      },
    );
  }
}
