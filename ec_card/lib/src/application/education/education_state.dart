part of 'education_cubit.dart';

@freezed
class EducationState with _$EducationState {
  const factory EducationState({
    @Default(false) bool isDocumentListLoading,
    @Default(false) bool isVideoListLoading,
    @Default([]) List<EducationItem> documentsList,
    @Default([]) List<EducationItem> videoList,
    @Default('') String query,
    @Default('') String videoQuery,
    @Default([]) List<EducationItem> filteredDocumentList,
    @Default([]) List<EducationItem> filteredVideoList,
    @Default(false) bool isDocumentSearchLoading,
    @Default(false) bool isVideoSearchLoading,
    @Default(false) bool isWeblinkListLoading,
    @Default([]) List<WeblinkItem> weblinkList,
    @Default('') String weblinkQuery,
    /// Tells an empty list after a failed call apart from one the
    /// organisation simply has not filled yet.
    @Default(false) bool hasWeblinkListFailed,
  }) = _EducationState;

  factory EducationState.initial() => const EducationState(
        isDocumentListLoading: false,
        isVideoListLoading: false,
        documentsList: [],
        videoList: [],
        query: '',
        videoQuery: '',
        filteredDocumentList: [],
        filteredVideoList: [],
        isDocumentSearchLoading: false,
        isVideoSearchLoading: false,
        isWeblinkListLoading: false,
        weblinkList: [],
        weblinkQuery: '',
        hasWeblinkListFailed: false,
      );
}
