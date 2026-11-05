part of 'application_bloc.dart';

@freezed 

abstract  class ApplicationState with _$ApplicationState {
  const factory ApplicationState.initial() = Initial;
  const factory ApplicationState.noInternetConnection() = NoInternetConnection;
  const factory ApplicationState.internetRestored() = InternetRestored;
  const factory ApplicationState.authenticated() = Authenticated;
  const factory ApplicationState.unauthenticated() = Unauthenticated;
  const factory ApplicationState.setRouteForIntentNav() = SetRouteForIntentNav;
  const factory ApplicationState.resumed() = Resumed;
  const factory ApplicationState.paused() = Paused;
  const factory ApplicationState.inactive() = Inactive;
}