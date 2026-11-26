// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'ec_card_app';

  @override
  String get login => 'Log In';

  @override
  String get mobile_no => 'Mobile Number';

  @override
  String get enter_mobile_no => 'Enter Mobile Number';

  @override
  String get new_user => 'New User?';

  @override
  String get register_now => ' Register Now';

  @override
  String get register => 'Register';

  @override
  String get terms_condition => 'Terms & Conditions';

  @override
  String get app_terms_conditions => 'Apps Terms & Conditions';

  @override
  String get accept_close => 'Accept & Close';

  @override
  String get register_no => 'Register Number';

  @override
  String get register_text_one =>
      'We need to verify your mobile number by sending you a one Time Password.';

  @override
  String get register_text_two =>
      'Please enter your Mobile No. without any prefixes and press the Register button.';

  @override
  String get enable_permission => 'Enable Permission';

  @override
  String get allow_permission =>
      'Please allow permission manually to complete the operation.';

  @override
  String get dismiss => 'Dismiss';

  @override
  String get open_settings => 'Open Settings';

  @override
  String get unexpectedError => 'An unexpected error occured';

  @override
  String get noInternetConnection => 'No Internet Connection';

  @override
  String get notFound => 'Not Found';

  @override
  String get databaseDisconnected =>
      'The operation had to be aborted due to a network disconnect';

  @override
  String get datatbaseExpiredToken => 'The supplied auth token has expired';

  @override
  String get databaseInvalidToken =>
      'The specified authentication token is invalid';

  @override
  String get missingPhoneNumber => 'Mobile number cannot be empty';

  @override
  String get invalidPhoneNumber => 'Please provide a valid mobile number';

  @override
  String get invalidVerificationCode => 'Invalid OTP';

  @override
  String get missingVerificationCode => 'Invalid OTP';

  @override
  String get codeExpired => 'OTP has expired. Please resend to try again.';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError => 'An unknown registration error occured';

  @override
  String get profileImageUploadError => 'Unable to upload profile picture';

  @override
  String get profileImageDeleteError => 'Unable to delete profile picture';

  @override
  String get clickHereForMoreInfo => 'click here for contact info';

  @override
  String unknownDatabaseError(String message) {
    return 'An unknown Databse Error: $message';
  }

  @override
  String get continue_to_quiz => 'Continue to Quiz';

  @override
  String get continue_to_dashboard => 'Continue to Dashboard';

  @override
  String get cancel => 'Cancel';

  @override
  String get done => 'Done';

  @override
  String get next => 'Next';

  @override
  String get verify => 'Verify';

  @override
  String get phone_number => 'Phone Number';

  @override
  String get phone_verification => 'Phone Verification';

  @override
  String get otp => 'OTP';

  @override
  String get submit => 'Submit';

  @override
  String get save_details => 'Save Details';

  @override
  String get postcode => 'Postcode';

  @override
  String get enter_postcode => 'Enter Postcode';

  @override
  String get dob => 'Date of Birth';

  @override
  String get dob_placeholder => 'DD /MM /YYYY';

  @override
  String get gender => 'Gender';

  @override
  String get male => 'M';

  @override
  String get female => 'F';

  @override
  String get other => 'Other';

  @override
  String get do_not_disclose => 'Do not wish to disclose';

  @override
  String get access_code => 'Access Code';

  @override
  String get enter_access_code => 'Enter Access Code';

  @override
  String get please_enter_access_code => 'Please Enter Access Code';

  @override
  String get resend_otp => 'Resend OTP';

  @override
  String resend_otp_countdown(String time) {
    return 'Resend OTP in $time';
  }

  @override
  String get change_mobile => 'Change Mobile';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'We have sent an OTP to your Mobile No. $mobileNumber';
  }

  @override
  String get well_done => 'Well Done! Registration Successful';

  @override
  String get registration_text =>
      'Your registration is complete now, however, to access the app you need to complete the quiz in the following process. You can watch educational videos to help you pass the quiz. If you have given access code, you can use this code to bypass the quiz process.';

  @override
  String get continue_button => 'Continue';

  @override
  String get watch_text => 'Watch';

  @override
  String get quiz_text => 'Quiz';

  @override
  String get finish_text => 'Finish';

  @override
  String get congratulations => 'Congratulations';

  @override
  String get not_eligible_for_transaction => 'Not Eligible for Transaction';

  @override
  String get to_scan_again => 'to Scan Again!';

  @override
  String get oh_no => 'Oh.. no..';

  @override
  String get oops => 'OOPS';

  @override
  String get transaction_successful => 'Transaction Successful!';

  @override
  String get quiz_completion_text_one =>
      'You have successfully completed the quiz and been accepted into the eC-Card scheme.You will now be able to access our list of approved venues and collect your free condom supply. Please ensure that the app can access location services and your camera.';

  @override
  String get quiz_completion_text_two =>
      'When you visit your venue please notify them that you are a member of the Sexual Health eC-Card scheme and that you would like to collect your free condoms. You will be asked to scan a QR code using the App to approve the transaction before being given your condom supply.';

  @override
  String get quiz_completion_text_three =>
      'If you have any problem please contact the service intelligence centre.';

  @override
  String get quiz_completion_text_four =>
      'Please note: Condoms are supplied in a fixed quantity, in one size and type. You can only make one collection in any 7 day period.';

  @override
  String get error_in_playing_video =>
      'There is an error in playing the video. Please try again!!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'Please accept the terms and conditions.';

  @override
  String get user_not_found => 'User Not Found';

  @override
  String get user_disabled => 'User Disabled';

  @override
  String get missing_phone_number => 'Missing Phone Number';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'Logout';

  @override
  String get are_you_sure_logout => 'Are you sure you want to logout?';

  @override
  String get delete_account => 'Delete Account';

  @override
  String get support => 'Support';

  @override
  String get ivts => 'IVTS';

  @override
  String get privacy_policy => 'Privacy Policy';

  @override
  String get accessibility_statement => 'Accessibility Statement';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get venues => 'Venues';

  @override
  String get education => 'Education';

  @override
  String get message => 'Message';

  @override
  String get account => 'Account';

  @override
  String get orderCompleted => 'Order Completed';

  @override
  String get transactionDetails => 'Transaction Details';

  @override
  String get close => 'Close';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return 'Thank you for your recent transaction at $date $time GMT. You can make your next pick-up after ';
  }

  @override
  String get countdownDay => 'day';

  @override
  String get countdownHour => 'hour';

  @override
  String get countdownMin => 'min';

  @override
  String get countdownSec => 'sec';

  @override
  String get welcomeToEcCard => 'Welcome to the eC-Card App';

  @override
  String get registrationDisclaimer =>
      'Please note this app is not for emergency contraceptives. If you need these, please contact your local pharmacy or sexual health service directly.';

  @override
  String get videos => 'Videos';

  @override
  String get documents => 'Documents';

  @override
  String get weblinks => 'Weblinks';

  @override
  String get no_weblinks => 'No educational weblinks found';

  @override
  String get weblink_opens_in_browser => 'Opens in browser';

  @override
  String sizeLabel(String size) {
    return 'Size: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count views';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'Stores';

  @override
  String get kiosk => 'Kiosk';

  @override
  String get search => 'Search';

  @override
  String get addressLabel => 'Address: ';

  @override
  String get notesLabel => 'Notes: ';

  @override
  String get directions => 'Directions';

  @override
  String get noKiosksAvailable => 'Currently no Kiosks are available.';

  @override
  String get noNotificationsYet => 'No notifications yet!';

  @override
  String get selectProduct => 'Select Product';

  @override
  String get noActiveProducts => 'No active products found in this store.';

  @override
  String get productDescription => 'Product Description';

  @override
  String get productSelectionWarning =>
      'Please ensure you make the right selection as only one selection is allowed per ordering period.';

  @override
  String get confirmSelection => 'Confirm Selection';

  @override
  String get productDescriptionLabel => 'Product Description:';

  @override
  String get back => 'Back';

  @override
  String get confirm => 'Confirm';

  @override
  String get skip => 'Skip';

  @override
  String get settings => 'Settings';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get lightTheme => 'Light Theme';

  @override
  String get darkTheme => 'Dark Theme';

  @override
  String get transactions => 'Transactions';

  @override
  String get allowUnlimitedTransactions => 'Allow unlimited transactions?';

  @override
  String get delete => 'Delete';

  @override
  String get delete_account_warning =>
      'Once you delete your account, all your visit records will be permanently deleted';

  @override
  String get additional_registration_questions =>
      'Additional Registration Questions';

  @override
  String submission_failed(String error) {
    return 'Submission failed: $error';
  }

  @override
  String get no_questions_available => 'No questions available.';

  @override
  String get select_option => 'Select Option';

  @override
  String get please_select_option => 'Please select an option';

  @override
  String get select_options => 'Select Options';

  @override
  String get please_select_at_least_one => 'Please select at least one option';

  @override
  String get ok => 'OK';

  @override
  String get contact_information => 'Contact Information';

  @override
  String get send_support_message => 'Send Support Message';

  @override
  String get title_hint => 'Title';

  @override
  String get title_cannot_be_empty => 'Title cannot be empty';

  @override
  String get description_hint => 'Description';

  @override
  String get description_cannot_be_empty => 'Description cannot be empty';

  @override
  String get email_invalid => 'Please enter a valid email address';

  @override
  String get email_hint => 'E-mail';

  @override
  String get add_attachment => 'Add Attachment';

  @override
  String get name_label => 'Name: ';

  @override
  String get email_label => 'Email: ';

  @override
  String get contact_number_label => 'Contact Number: ';

  @override
  String get enter_otp_delete_account => 'Enter OTP to delete your account';

  @override
  String get delete_confirm_warning =>
      'After pressing submit, all your visit records will be permanently deleted. Do you wish to continue?';

  @override
  String get unexpected_error_try_again =>
      'Unexpected Error! Please try again.';

  @override
  String get gallery => 'Gallery';

  @override
  String get field_is_mandatory => 'Field is mandatory';

  @override
  String get current_location => 'Current Location';

  @override
  String get submitted_successfully => 'Submitted Successfully!';

  @override
  String get failed_to_load_profile => 'Failed to load profile data';

  @override
  String get api_exception_not_implemented => 'API Exception Not Implemented';

  @override
  String get api_exception_request_cancelled =>
      'API Exception Request Cancelled';

  @override
  String get api_exception_internal_server_error =>
      'API Exception Internal Server Error';

  @override
  String get api_exception_not_found => 'API Exception Not Found';

  @override
  String get api_exception_service_unavailable =>
      'API Exception Service Unavailable';

  @override
  String get api_exception_method_not_allowed =>
      'API Exception Method Not Allowed';

  @override
  String get api_exception_bad_request => 'API Exception Bad Request';

  @override
  String get api_exception_unauthorized_request =>
      'API Exception Unauthorized Request';

  @override
  String get api_exception_unexpected_error => 'API Exception Unexpected Error';

  @override
  String get api_exception_request_timeout => 'API Exception Request Timeout';

  @override
  String get api_exception_no_internet_connection =>
      'API Exception No Internet Connection';

  @override
  String get api_exception_send_timeout => 'API Exception Send Timeout';

  @override
  String get api_exception_conflict => 'API Exception Conflict';

  @override
  String get api_exception_unable_to_process_request =>
      'API Exception Unable to Process Request';

  @override
  String get api_exception_unable_to_perform_action =>
      'API Exception Unable to Perform Action';

  @override
  String get api_exception_unauthorized_exception =>
      'API Exception Unauthorized Exception';

  @override
  String get api_exception_default_error => 'API Exception Default Error';

  @override
  String get api_exception_format_exception => 'API Exception Format Exception';

  @override
  String get api_exception_not_acceptable => 'API Exception Not Acceptable';

  @override
  String get version_label => 'Version';

  @override
  String get update_available_title => 'Update available';

  @override
  String get update_required_title => 'Update required';

  @override
  String get update_available_message =>
      'A new version of the app is available. Update now to get the latest features and fixes.';

  @override
  String get update_required_message =>
      'This version of the app is no longer supported. Please update to continue.';

  @override
  String get update_now => 'Update now';

  @override
  String get update_later => 'Later';

  @override
  String get permission_denied => 'Permission Denied';

  @override
  String get online => 'Online';

  @override
  String get noProductsFound => 'No products found';

  @override
  String get failedToLoadProducts => 'Failed to load products.';

  @override
  String get readMore => 'Read More';

  @override
  String get notEligibleToOrderNow =>
      'You are not eligible to order right now.';

  @override
  String get productDetails => 'Product Details';

  @override
  String get orderNow => 'Order Now';

  @override
  String get provideAddressAndContact =>
      'Please Provide Your Address\nand Contact No. to Order';

  @override
  String get streetRequired => 'Street*';

  @override
  String get addressLineTwo => 'Address Line Two';

  @override
  String get townCityRequired => 'Town/City*';

  @override
  String get postcodeRequired => 'Postcode*';

  @override
  String get contactNoRequired => 'Contact No.*';

  @override
  String get requiredField => 'Required';

  @override
  String get onlineStore => 'Online Store';

  @override
  String get confirmDeliveryInfo => 'Confirm Delivery Info';

  @override
  String get failedToPlaceOrder => 'Failed to place order. Please try again.';

  @override
  String get unexpectedErrorOccurred => 'An unexpected error occurred';

  @override
  String get orderBlockWarning =>
      'You will be blocked for 7 days to put next order.';

  @override
  String get orderPlaced => 'Order Placed';

  @override
  String get orderConfirmed => 'Your Order is now confirmed.';

  @override
  String get orderDetails => 'Order Details';

  @override
  String get productNameLabel => 'Product Name:';

  @override
  String get venueNameLabel => 'Venue Name:';

  @override
  String get orderDateLabel => 'Order Date:';

  @override
  String get orderTimeLabel => 'Order Time:';

  @override
  String get orderBlockedSevenDays =>
      'You are blocked for 7 days\nto put next order.';

  @override
  String get openingTimesText => 'Opening times';

  @override
  String get openingHoursMonday => 'Monday';

  @override
  String get openingHoursTuesday => 'Tuesday';

  @override
  String get openingHoursWednesday => 'Wednesday';

  @override
  String get openingHoursThursday => 'Thursday';

  @override
  String get openingHoursFriday => 'Friday';

  @override
  String get openingHoursSaturday => 'Saturday';

  @override
  String get openingHoursSunday => 'Sunday';

  @override
  String get openingHoursMonShort => 'Mon';

  @override
  String get openingHoursTueShort => 'Tue';

  @override
  String get openingHoursWedShort => 'Wed';

  @override
  String get openingHoursThuShort => 'Thu';

  @override
  String get openingHoursFriShort => 'Fri';

  @override
  String get openingHoursSatShort => 'Sat';

  @override
  String get openingHoursSunShort => 'Sun';

  @override
  String get openingHoursClosed => 'closed';

  @override
  String get openingHoursAnd => 'and';

  @override
  String get openingHoursTo => 'to';

  @override
  String get orderHistory => 'Order History';

  @override
  String get noOrdersFound => 'No orders found';

  @override
  String get failedToLoadOrderHistory =>
      'Failed to load order history. Please try again.';

  @override
  String get orderStatusLabel => 'Status:';

  @override
  String get deliveryAddressLabel => 'Delivery Address:';

  @override
  String get retry => 'Retry';

  @override
  String get something_went_wrong => 'Something went wrong. Please try again.';

  @override
  String get videoPlay => 'Play';

  @override
  String get videoPause => 'Pause';

  @override
  String get videoMute => 'Mute';

  @override
  String get videoUnmute => 'Unmute';

  @override
  String get videoUnavailable => 'This video is unavailable.';

  @override
  String get videoFullScreen => 'Full screen';

  @override
  String get videoExitFullScreen => 'Exit full screen';

  @override
  String get videoSeek => 'Video position';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes minutes $seconds seconds';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$position of $duration';
  }

  @override
  String get payloadTooLarge =>
      'That file is too large to send. Please choose a smaller one.';

  @override
  String get tooManyRequests =>
      'Too many attempts. Please wait a moment and try again.';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'Too many attempts. Please try again in $seconds seconds.';
  }

  @override
  String get serverError =>
      'Something went wrong at our end. Please try again shortly.';

  @override
  String get serviceUnavailable =>
      'The service is temporarily unavailable. Please try again shortly.';

  @override
  String get backButtonLabel => 'Back';

  @override
  String get scanQrCode => 'Scan QR code';

  @override
  String get attachedImage => 'Attached image';

  @override
  String get chooseDateOfBirth => 'Choose date of birth';
}
