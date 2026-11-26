import 'package:ec_card_app/src/application/loading_status/loading_status_cubit.dart';
import 'package:ec_card_app/src/application/message/message_cubit.dart';
import 'package:ec_card_app/src/data/messages/model/message_body.dart';
import 'package:ec_card_app/src/presentation/core/a11y/semantic_labels.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/message/widgets/generic_page.dart';
import 'package:ec_card_app/src/presentation/message/widgets/message_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:html/parser.dart';

class MessageCard extends StatefulWidget {
  const MessageCard({
    Key? key,
    required this.message,
    required this.selectedKey,
  }) : super(key: key);

  final MessageBody message;
  final String selectedKey;

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  void initState() {
    super.initState();
  }

  /// Plain-text preview of the body, with any HTML stripped for the
  /// `generic` message type. Used both for display and for the card's
  /// accessible name.
  String get _bodyPreview => widget.message.type == 'generic'
      ? parse(widget.message.body).documentElement!.text
      : widget.message.body;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageCubit, MessageState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            if (widget.message.type != "generic") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessageLoadingScreen(
                      message: widget.message,
                      selectedKey: widget.selectedKey,
                    ),
                  ));
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          GenericPage(message: widget.message)));

              context
                  .read<MessageCubit>()
                  .markNotificationAsRead(widget.selectedKey, widget.message);

              if (!widget.message.isRead) {
                BlocProvider.of<LoadingStatusCubit>(context)
                    .updateNotificationCount();
              }
            }

            // Future.delayed(const Duration(seconds: 3), () {
            //   context.read<MessageCubit>().getListOfNotifications();
            // });
          },
          // The card, its title and its body would otherwise each surface as
          // their own accessibility node, so a screen reader announces the
          // message text more than once per row. Collapse the row into a
          // single node whose name is the title followed by the body preview;
          // the enclosing InkWell still supplies the tap semantics.
          child: Semantics(
            label: semanticLabelFor(widget.message.title, _bodyPreview),
            excludeSemantics: true,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        widget.message.isRead
                            ? const SizedBox()
                            : Row(
                                children: [
                                  Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        color: primaryColorLight,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                  ),
                                  SizedBox(width: 20.w),
                                ],
                              ),
                        Flexible(
                          child: Text(
                            widget.message.title,
                            maxLines: 1,
                            style: Theme.of(context).textTheme.bodyLarge,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _bodyPreview,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: widget.message.type == 'generic'
                          ? null
                          : Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
