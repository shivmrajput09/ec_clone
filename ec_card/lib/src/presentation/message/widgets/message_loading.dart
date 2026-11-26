import 'package:animations/animations.dart';
import 'package:ec_card_app/src/application/loading_status/loading_status_cubit.dart';
import 'package:ec_card_app/src/application/message/message_cubit.dart';
import 'package:ec_card_app/src/data/messages/model/message_body.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:ec_card_app/src/presentation/education/widgets/document_reader.dart';
import 'package:ec_card_app/src/presentation/education/widgets/video_player.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_video_source.dart';
import 'package:ec_card_app/src/data/education/model/weblink_item/weblink_video_source.dart';
import 'package:ec_card_app/src/presentation/education/education_screen.dart';
import 'package:ec_card_app/src/presentation/education/widgets/youtube_video_player.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utils/extension.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class MessageLoadingScreen extends StatefulWidget {
  const MessageLoadingScreen({
    Key? key,
    required this.message,
    required this.selectedKey,
  }) : super(key: key);

  final MessageBody message;
  final String selectedKey;

  @override
  State<MessageLoadingScreen> createState() => _MessageLoadingScreenState();
}

class _MessageLoadingScreenState extends State<MessageLoadingScreen> {
  bool get _isWeblink => widget.message.type == 'educationWeblink';

  @override
  void initState() {
    final cubit = BlocProvider.of<MessageCubit>(context);

    // A weblink is not an education item: it has no route of its own on the
    // gateway, so it is looked for among the links the organisation shares.
    _isWeblink
        ? cubit.getWeblinkFromNotification(message: widget.message)
        : cubit.getEducationItemFromNotification(message: widget.message);

    super.initState();
  }

  void _markRead() {
    context
        .read<MessageCubit>()
        .markNotificationAsRead(widget.selectedKey, widget.message);

    if (!widget.message.isRead) {
      BlocProvider.of<LoadingStatusCubit>(context).updateNotificationCount();
    }
  }

  /// Opens what the weblink notification is about.
  ///
  /// A link that plays goes straight to its player, the way tapping the card
  /// on the Weblinks tab does. Anything else — an ordinary web page, or a
  /// link that is no longer shared — lands on the Weblinks tab.
  void _openWeblink(MessageState state) {
    if (!state.isWeblinkNotificationResolved) return;

    final weblink = state.notificationWeblink;
    _markRead();

    if (weblink == null || !weblink.isPlayableVideo) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const EducationScreen(initialTabIndex: 2),
        ),
      );
      return;
    }

    final video = weblink.asVideo();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => weblink.isEmbeddedVideo
            ? YouTubeVideoPlayerScreen(video: video)
            : VideoPlayerScreen(video: video, afterMessageLoading: () {}),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MessageCubit, MessageState>(
      listener: (context, state) {
        if (_isWeblink) {
          _openWeblink(state);
          return;
        }

        state.educationItemFetchFailureOrSuccessOption?.map((a) => a.fold((l) {
              context.showError(l);
              // Navigator.pop(context);
            }, (r) {
              widget.message.type == 'educationDocument'
                  ? Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 250),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return SharedAxisTransition(
                            transitionType: SharedAxisTransitionType.horizontal,
                            secondaryAnimation: secondaryAnimation,
                            animation: animation,
                            child: child,
                          );
                        },
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return DocumentReaderPage(
                            document: r,
                            calledFrom: "messages",
                            afterMessageLoading: () {
                              appLog(
                                  "------- MESSAGE LOADING: INSIDE AFTER MESSAGE LOADING -------");
                              context
                                  .read<MessageCubit>()
                                  .markNotificationAsRead(
                                      widget.selectedKey, widget.message);

                              if (!widget.message.isRead) {
                                BlocProvider.of<LoadingStatusCubit>(context)
                                    .updateNotificationCount();
                              }
                            },
                          );
                        },
                      ),
                    )
                  : widget.message.type == 'educationVideo'
                      ? Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            transitionDuration:
                                const Duration(milliseconds: 250),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return SharedAxisTransition(
                                transitionType:
                                    SharedAxisTransitionType.horizontal,
                                secondaryAnimation: secondaryAnimation,
                                animation: animation,
                                child: child,
                              );
                            },
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              // A video shared from YouTube is a web page, not
                              // a media file: handed to the app's own player
                              // it failed to open at all.
                              if (r.isYouTubeVideo) {
                                return YouTubeVideoPlayerScreen(
                                  video: r,
                                  onOpened: () {
                                    context
                                        .read<MessageCubit>()
                                        .markNotificationAsRead(
                                            widget.selectedKey, widget.message);

                                    if (!widget.message.isRead) {
                                      BlocProvider.of<LoadingStatusCubit>(
                                              context)
                                          .updateNotificationCount();
                                    }
                                  },
                                );
                              }

                              return VideoPlayerScreen(
                                video: r,
                                afterMessageLoading: () {
                                  appLog(
                                      "------- MESSAGE LOADING: INSIDE AFTER MESSAGE LOADING -------");
                                  context
                                      .read<MessageCubit>()
                                      .markNotificationAsRead(
                                          widget.selectedKey, widget.message);

                                  if (!widget.message.isRead) {
                                    BlocProvider.of<LoadingStatusCubit>(context)
                                        .updateNotificationCount();
                                  }
                                },
                              );
                            },
                          ),
                        )
                      : null;
            }));
      },
      child: Scaffold(
        appBar: CustomAppBar(appBar: AppBar(), title: AppLocalizations.of(context)!.ecCard),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
