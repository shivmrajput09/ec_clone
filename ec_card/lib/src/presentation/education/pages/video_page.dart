import 'package:ec_card_app/src/application/education/education_cubit.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/widgets/custom_search_bar.dart';
import 'package:ec_card_app/src/presentation/core/widgets/locale_refetch.dart';
import 'package:ec_card_app/src/presentation/education/widgets/video_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoPage extends StatelessWidget {
  VideoPage({Key? key}) : super(key: const Key("video-page"));

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<EducationCubit>()..getVideoList(),
        child: LocaleRefetch(
          onLocaleChanged: (context) =>
              context.read<EducationCubit>().getVideoList(),
          child: BlocBuilder<EducationCubit, EducationState>(
            builder: (context, state) {
              return Column(
                children: [
                  SearchBarWidget(
                    query: state.videoQuery,
                    controller: searchController,
                    onChanged: (val) {
                      if (val.isEmpty) {
                        context.read<EducationCubit>().clearSearch();
                      } else {
                        if (val.length > 2) {
                          context.read<EducationCubit>().searchVideo(val);
                        }
                      }
                    },
                    onClearPressed: () {
                      searchController.text = '';
                      FocusScope.of(context).unfocus();
                      context.read<EducationCubit>().searchVideo('');
                    },
                  ),
                  Expanded(
                    child: state.isVideoListLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ListView.builder(
                            itemCount: state.videoQuery.isEmpty
                                ? state.videoList.length
                                : state.filteredVideoList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    bottom: index ==
                                                state.videoList.length - 1 ||
                                            index ==
                                                state.filteredVideoList.length -
                                                    1
                                        ? 20
                                        : 0),
                                child: VideoCard(
                                  video: state.videoQuery.isEmpty
                                      ? state.videoList[index]
                                      : state.filteredVideoList[index],
                                ),
                              );
                            }),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
