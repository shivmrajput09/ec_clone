// ignore_for_file: constant_identifier_names

abstract class APIEndpoints {
  // Single toggle for the web host: switching this switches the API base
  // URL and the Terms & Conditions / Privacy Policy URLs together, so they
  // can't drift out of sync when moving between environments.
  static const String _WEB_HOST =
      //"https://ec-cardapp.com"; // to be used for production builds
      //"https://ec-card.icycastle.com"; // to be used for development builds
      "https://stg.ec-cardapp.com"; // to be used for staging builds

  /// Short label for the environment this build points at, derived from the
  /// single [_WEB_HOST] toggle so it can never disagree with the API actually
  /// in use. Shown next to the version number on the Account screen.
  static String get environmentLabel {
    if (_WEB_HOST.contains("stg.")) return "stage";
    if (_WEB_HOST.contains("icycastle")) return "dev";
    return "prod";
  }

  static const String BASE_URL = "$_WEB_HOST/nodeapi/ec-card-gateway/api";
  // "http://localhost:80/nodeapi/ec-card-gateway/api";
  static const String TNC_URL = "$_WEB_HOST/terms-and-conditions";
  static const String PRIVACY_URL = "$_WEB_HOST/privacy-policy";
  static const String ACCESSIBILITY_URL = "$_WEB_HOST/accessibility-statement";
  static const APP_VERSION_URL = "/public/v1/app-version";
  // A06-2: shared session-refresh endpoint. The access/refresh token pair is
  // sent as request headers, so no CSRF token is required.
  static const REFRESH_URL = "/auth/refresh";
  static const LOGIN_URL = "/user/v1/login";
  static const LOGOUT_URL = "/user/v1/logout";
  static const REGISTER_NUMBER_URL = "/user/v1/register-number";
  static const VERIFY_LOGIN_URL = "/user/v1/verify-login";
  static const VERIFY_REGISTER_URL = "/user/v1/verify-register-number";
  static const CHECK_DOB_URL = "/user/v1/check-date-of-birth";
  static const SELF_REGISTER_URL = "/user/v1/self-register";
  static const BYPASS_QUIZ_STAGE_URL = "/user/v1/bypass-quiz-stage";
  static const VIEW_QUESTIONS_URL = "/user/v1/view-questions";
  static const LEVEL_PROGRESS_URL = "/user/v1/level-progress";
  static const USER_PROFILE_URL = "/user/v1/profile";
  static const SAVE_FCM_TOKEN_URL = "/user/v1/fcm-token/save";
  static const MARK_AS_WATCHED_URL = "/user/v1/mark-as-watched";
  static const SUBMIT_QUIZ_URL = "/user/v1/submit-quiz-answers";
  static const BRAND_INFO_URL = "/user/v1/brand-info";
  static const USER_DASHBOARD_URL = "/user/v1/";
  static const EDUCATION_URL = "/user/v1/education/";
  static const EDUCATION_DOCUMENT_URL = "/user/v1/education/document/view";
  static const EDUCATION_VIDEO_URL = "/user/v1/education/video/view";
  static const EDUCATION_WEBLINK_URL = "/user/v1/education/weblink/view";
  static const SELF_DELETE_URL = "/user/v1/self-delete";
  static const NOTIFICATIONS_URL = "/user/v1/notifications";
  static const VIEW_STORES_URL = "/user/v1/view-stores";
  static const CLAIM_TRANSACTION_URL = "/user/v1/claim-transaction";
  static const CHECK_ELIGIBLE_TRANSACTION_URL = "/user/v1/eligible-transaction";
  static const SUPPORT_URL = "/user/v1/support";
  static const VIEW_IVTS_URL = "/user/v1/view-ivts";
  static const MARK_ALL_WATCHED = "/user/v1/mark-all-as-watched";
  static const SYNC_TRANSACTION_URL = "/user/v1/sync-offline-transaction";
  static const GET_PRODUCTS_BY_QR_URL = "/user/v1/products-by-qr";
  static const GET_PRODUCTS_FROM_ONLINE_STORE_URL =
      "/user/online-store/v1/list";
  static const ORDER_PRODUCTS_ONLINE = "/user/online-store/v1/order-product";
  static const ORDER_HISTORY_ONLINE = "/user/v1/order-history";

  /// A06-2: a 401 on any of these pre-auth / registration endpoints is a genuine
  /// credential or validation failure, not an expired session, so it must NOT
  /// trigger a token refresh + retry. The refresh endpoint itself is included so
  /// a failed refresh can never recurse.
  static const Set<String> preAuthPaths = {
    REFRESH_URL,
    APP_VERSION_URL,
    LOGIN_URL,
    REGISTER_NUMBER_URL,
    VERIFY_LOGIN_URL,
    VERIFY_REGISTER_URL,
    CHECK_DOB_URL,
    SELF_REGISTER_URL,
  };
}
