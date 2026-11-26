import 'package:ec_card_app/src/application/education/education_cubit.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_video_source.dart';
import 'package:ec_card_app/src/presentation/education/widgets/video_player.dart';
import 'package:ec_card_app/src/presentation/education/widgets/youtube_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({
    Key? key,
    required this.video,
  }) : super(key: key);

  final EducationItem video;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationCubit, EducationState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  context
                      .read<EducationCubit>()
                      .updateEducationViews('video', video.educationId);
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      // A YouTube link is a web page, not a media file, so it
                      // cannot go to the app's own player.
                      builder: (context) => video.isYouTubeVideo
                          ? YouTubeVideoPlayerScreen(video: video)
                          : VideoPlayerScreen(
                              video: video,
                              afterMessageLoading: () {},
                            ),
                    ),
                  );
                  context.read<EducationCubit>().getVideoList();
                },
                child: Stack(
                  children: [
                    SizedBox(
                      height: 200.h,
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          // side: BorderSide(width: 1, color: Colors.grey[300]!),
                        ),
                        child: Image.network(
                          video.videoThumbnail,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 20,
                        right: 20,
                        child: Container(
                          height: 20.h,
                          width: 100.w,
                          color: Colors.black.withOpacity(0.5),
                          alignment: Alignment.center,
                          child: Text(
                            video.durationText,
                            style: const TextStyle(color: white),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 10),
                child: Text(
                  video.videoTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Text(video.videoAuthor),
                    Text(AppLocalizations.of(context)!
                        .viewsCount(video.views.toString())),
                    Text(video.createdText),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}
