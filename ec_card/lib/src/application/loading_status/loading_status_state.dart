part of 'loading_status_cubit.dart';

/// [Zero-Knowledge Explanation]
/// Yeh 'LoadingStatusState' humare Cubit (Manager) ka "Notepad" hai.
/// Manager jo bhi background mein kar raha hota hai (jaise internet check karna, 
/// profile load karna, ya quiz ka result dekhna), wo is notepad mein likhta hai
/// taaki UI (Table) use padh kar Loading Spinner ya Error message dikha sake.
/// 
/// Yahan `@freezed` ka jaadu use hua hai. Freezed hamari mehnat bachata hai aur
/// automatically is notepad ki copy banane ke functions (copyWith) generate karta hai.

@freezed
class LoadingStatusState with _$LoadingStatusState {
  const factory LoadingStatusState({
    // Quiz/Video/Profile gatekeeper ka final result
    required Option<Either<AppErrors, String>> quizPassedFailureOrSuccess,
    
    /// [Change Effect]
    /// `@Default(false)` ka matlab hai agar Cubit ne `isLoading` ki value nahi di, 
    /// toh default false maan lo. Agar tum yahan se `@Default(false)` hata do, 
    /// toh Freezed error dega ki ya toh default value batao, ya isko 'required' karo.
    @Default(false) bool isLoading,
    
    // API se aane wala data yahan save hota hai
    OrgBrandInfoData? brandInfo,
    UserDashboardData? userDashboardData,
    
    // Dashboard ka data lane mein success hui ya fail?
    required Option<Either<AppErrors, UserDashboardData>> dashboardCallFailureOrSuccess,
    @Default(false) bool dashboardLoading,
    
    // Profile (Form) ka data aur uski loading state
    UserProfileData? userProfileData,
    required Option<Either<AppErrors, UserProfileData>> profileCallFailureOrSuccess,
    @Default(false) bool profileLoading,
    
    // Account delete karne ka process
    @Default(false) bool otpLoading,
    @Default(false) bool selfDeletionProcessStarted,
    @Default('') String otp,
    required Option<Either<AppErrors, String>> deleteFailureOrSuccessOption,
    
    // Mandatory videos ki list jo user ko dekhni hai
    @Default([]) List<VideoItem> videoList,
    
    // Internet connection ka current status
    @Default(false) bool isConnectedToInternet,
  }) = _LoadingStatusState;

  /// [Zero-Knowledge Explanation]
  /// `initial()` ka matlab hai jab app khulti hai aur Manager pehli baar
  /// apna notepad kholta hai, toh by default usme kya likha hona chahiye.
  factory LoadingStatusState.initial() => LoadingStatusState(
        quizPassedFailureOrSuccess: none(),
        isLoading: false,
        dashboardCallFailureOrSuccess: none(),
        dashboardLoading: false,
        profileCallFailureOrSuccess: none(),
        profileLoading: false,
        selfDeletionProcessStarted: false,
        otp: '',
        otpLoading: false,
        deleteFailureOrSuccessOption: none(),
        videoList: [],
        isConnectedToInternet: false, // Start mein false maante hain jab tak check na ho
      );
}