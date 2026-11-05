part of 'application_bloc.dart';

@freezed 

 abstract class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.checkStatus() = CheckStatus;

  const factory ApplicationEvent.internetStatusChanged(bool isConnected) =
      InternetStatusChanged;

  const factory ApplicationEvent.logout() = Logout;

  const factory ApplicationEvent.applicationLifecycleChanged(
          {required AppLifecycleState lifecycleState}) =
      ApplicationLifecycleChanged;
}