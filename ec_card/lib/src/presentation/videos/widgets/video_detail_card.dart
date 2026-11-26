import 'package:ec_card_app/src/application/quiz/video/video_cubit.dart';
import 'package:ec_card_app/src/data/quiz/model/video_item.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';

class VideoDetailCardWidget extends StatelessWidget {
  const VideoDetailCardWidget(
      {Key? key, required this.video, required this.onWatchButtonPress})
      : super(key: key);

  final VideoItem video;
  final Function onWatchButtonPress;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoCubit, VideoState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: ListTile(
                horizontalTitleGap: 5,
                minVerticalPadding: 15,
                leading: video.watched
                    ? Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: primaryBackgroundColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(Icons.done,
                            size: 15, color: Colors.white),
                      )
                    : Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                title: Text(
                  video.videoTitle,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      onWatchButtonPress();
                      context.read<VideoCubit>().getVideosList();
                    },
                    child: Text(
                      AppLocalizations.of(context)!.watch_text,
                      // Every card has a Watch button, so a screen reader
                      // needs the video's title to tell them apart. "Watch"
                      // stays first so the spoken name starts with the
                      // visible text.
                      semanticsLabel:
                          '${AppLocalizations.of(context)!.watch_text}, ${video.videoTitle}',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                          const EdgeInsets.symmetric(horizontal: 20)),
                      backgroundColor: MaterialStateProperty.all<Color?>(
                          primaryBackgroundColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r))),
                    ),
                  ),
                )),
          ),
        );
      },
    );
  }
}
