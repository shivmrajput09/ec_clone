import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:ec_card_app/src/data/education/model/weblink_item/weblink_item.dart';
import 'package:ec_card_app/src/domain/education/education_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'education_state.dart';
part 'education_cubit.freezed.dart';

@injectable
class EducationCubit extends Cubit<EducationState> {
  EducationCubit(this.educationRepo) : super(EducationState.initial());

  final EducationRepository educationRepo;

  void getDocumentList() async {
    emit(state.copyWith(isDocumentListLoading: true));

    final result = await educationRepo.getEducationDocumentsList();

    result.fold((l) {
      emit(state.copyWith(
        isDocumentListLoading: false,
      ));
    }, (r) {
      emit(state.copyWith(
        documentsList: r,
        isDocumentListLoading: false,
      ));
    });
  }

  void getVideoList() async {
    emit(state.copyWith(isVideoListLoading: true));

    final result = await educationRepo.getEducationVideosList();

    result.fold((l) {
      emit(state.copyWith(
        isVideoListLoading: false,
      ));
    }, (r) {
      emit(state.copyWith(
        videoList: r,
        isVideoListLoading: false,
      ));
    });
  }

  /// Weblinks are searched by the gateway rather than filtered here, so the
  /// typing is held back to avoid a request per keystroke.
  Timer? _weblinkSearchDebounce;

  void getWeblinkList({String query = ''}) async {
    emit(state.copyWith(
      isWeblinkListLoading: true,
      weblinkQuery: query,
      hasWeblinkListFailed: false,
    ));

    final result = await educationRepo.getEducationWeblinks(query: query);

    // A later search has already been asked for; its own answer is the one
    // that belongs on screen.
    if (isClosed || state.weblinkQuery != query) return;

    result.fold(
      // The results that were on screen belong to the previous search, so
      // they are cleared rather than left standing as though they answered
      // this one.
      (l) => emit(state.copyWith(
        weblinkList: const [],
        isWeblinkListLoading: false,
        hasWeblinkListFailed: true,
      )),
      (r) => emit(state.copyWith(
        weblinkList: r,
        isWeblinkListLoading: false,
        hasWeblinkListFailed: false,
      )),
    );
  }

  void searchWeblink(String query) {
    _weblinkSearchDebounce?.cancel();
    _weblinkSearchDebounce = Timer(
      const Duration(milliseconds: 400),
      () => getWeblinkList(query: query.trim()),
    );
  }

  @override
  Future<void> close() {
    _weblinkSearchDebounce?.cancel();
    return super.close();
  }

  void searchDocument(String query) {
    emit(state.copyWith(isDocumentSearchLoading: true, query: query.trim()));
    List<EducationItem> searchedList = [];
    if (state.query.isNotEmpty) {
      searchedList = state.documentsList
          .where((element) =>
              element.documentTitle.toLowerCase().contains(state.query))
          .toList();
    }

    emit(state.copyWith(
      isDocumentSearchLoading: false,
      filteredDocumentList:
          query.isNotEmpty ? searchedList : state.documentsList,
    ));
  }

  void searchVideo(String query) {
    emit(state.copyWith(isVideoSearchLoading: true, videoQuery: query.trim()));
    List<EducationItem> searchedList = [];
    if (state.videoQuery.isNotEmpty) {
      searchedList = state.videoList
          .where((element) =>
              element.videoTitle.toLowerCase().contains(state.videoQuery))
          .toList();
    }

    emit(state.copyWith(
      isVideoSearchLoading: false,
      filteredVideoList: query.isNotEmpty ? searchedList : state.videoList,
    ));
  }

  void clearSearch() {
    emit(state.copyWith(
      query: '',
      videoQuery: '',
      filteredDocumentList: [],
      filteredVideoList: [],
    ));
  }

  void updateEducationViews(String type, String educationId) async {
    await educationRepo.updateEducationView(
      type,
      educationId,
    );
  }
}
