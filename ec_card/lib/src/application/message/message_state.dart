part of 'message_cubit.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    @Default(false) bool isLoading,
    @Default({}) Map<String, List<dynamic>> notificationsList,
    Option<Either<AppErrors, EducationItem>>?
        educationItemFetchFailureOrSuccessOption,
    EducationItem? educationItem,
    @Default(false) bool isEducationItemFetched,
    @Default(false) bool navigateToEducationItemDetails,
    /// Set once a weblink notification has been looked up, whether or not
    /// the link was found.
    @Default(false) bool isWeblinkNotificationResolved,
    WeblinkItem? notificationWeblink,
  }) = _MessageState;

  factory MessageState.initial() => MessageState(
        isLoading: false,
        educationItemFetchFailureOrSuccessOption: none(),
        notificationsList: {},
        isEducationItemFetched: false,
        navigateToEducationItemDetails: false,
        isWeblinkNotificationResolved: false,
      );
}
