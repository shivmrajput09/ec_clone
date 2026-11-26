import 'package:ec_card_app/src/application/message/message_cubit.dart';
import 'package:ec_card_app/src/data/messages/model/message_body.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:ec_card_app/src/presentation/core/widgets/locale_refetch.dart';
import 'package:ec_card_app/src/presentation/message/widgets/message_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: const Key("message-screen"));

  static const routeName = "/message";

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<MessageCubit>(context).getListOfNotifications();
  }

  @override
  Widget build(BuildContext context) {
    // Notification titles, bodies and the relative-date group headers are
    // rendered server-side per Accept-Language, so they have to be re-fetched
    // when the language changes rather than waiting for an app restart.
    return LocaleRefetch(
      onLocaleChanged: (context) =>
          context.read<MessageCubit>().getListOfNotifications(),
      child: BlocBuilder<MessageCubit, MessageState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
                appBar: AppBar(), title: AppLocalizations.of(context)!.message),
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
              child: state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : state.notificationsList.keys.isEmpty
                      ? Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: SizedBox(
                                width: double.infinity,
                                child: Center(
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .noNotificationsYet,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : ListView.builder(
                          itemCount: state.notificationsList.keys.length,
                          itemBuilder: (context, index) {
                            final key =
                                state.notificationsList.keys.toList()[index];

                            final keyList = state.notificationsList[key]!;
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GrouperWidget(groupTitle: key),
                                SizedBox(height: 10.h),
                                ListView.builder(
                                  itemCount: keyList.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, i) {
                                    final map =
                                        Map<String, dynamic>.from(keyList[i]);

                                    final convertedMessage =
                                        convertIntoMessageBody(map);
                                    return MessageCard(
                                      message: convertedMessage,
                                      selectedKey: key,
                                    );
                                  },
                                ),
                                SizedBox(height: 20.h),
                              ],
                            );
                          },
                        ),
            ),
          );
        },
      ),
    );
  }
}

class GrouperWidget extends StatelessWidget {
  const GrouperWidget({
    Key? key,
    required this.groupTitle,
  }) : super(key: key);

  final String groupTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[600],
        borderRadius: BorderRadius.all(
          Radius.circular(15.r),
        ),
      ),
      child: Text(
        groupTitle,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: white,
            ),
      ),
    );
  }
}
