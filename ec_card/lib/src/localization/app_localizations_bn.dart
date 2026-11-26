// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'ইসি_কার্ড_অ্যাপ';

  @override
  String get login => 'লগ ইন';

  @override
  String get mobile_no => 'মোবাইল নম্বর।';

  @override
  String get enter_mobile_no => 'মোবাইল নম্বর লিখুন।';

  @override
  String get new_user => 'নতুন ব্যবহারকারী?';

  @override
  String get register_now => 'এখনই নিবন্ধন করুন';

  @override
  String get register => 'নিবন্ধন';

  @override
  String get terms_condition => 'শর্তাবলী';

  @override
  String get app_terms_conditions => 'অ্যাপের শর্তাবলী';

  @override
  String get accept_close => 'গ্রহণ করুন এবং বন্ধ করুন';

  @override
  String get register_no => 'রেজিস্টার নম্বর';

  @override
  String get register_text_one =>
      'আমাদের আপনার মোবাইল নম্বরটি একটি ওয়ান টাইম পাসওয়ার্ড পাঠিয়ে যাচাই করতে হবে।';

  @override
  String get register_text_two =>
      'অনুগ্রহ করে কোনও উপসর্গ ছাড়াই আপনার মোবাইল নম্বর লিখুন এবং সাবমিট বোতাম টিপুন।';

  @override
  String get enable_permission => 'অনুমতি সক্ষম করুন';

  @override
  String get allow_permission =>
      'অপারেশনটি সম্পন্ন করার জন্য অনুগ্রহ করে ম্যানুয়ালি অনুমতি দিন।';

  @override
  String get dismiss => 'খারিজ করুন';

  @override
  String get open_settings => 'সেটিংস খুলুন';

  @override
  String get unexpectedError => 'একটি অপ্রত্যাশিত ত্রুটি ঘটেছে।';

  @override
  String get noInternetConnection => 'ইন্টারনেট সংযোগ নেই';

  @override
  String get notFound => 'পাওয়া যায়নি';

  @override
  String get databaseDisconnected =>
      'নেটওয়ার্ক সংযোগ বিচ্ছিন্ন হওয়ার কারণে অপারেশনটি বাতিল করতে হয়েছিল।';

  @override
  String get datatbaseExpiredToken =>
      'সরবরাহকৃত প্রমাণীকরণ টোকেনের মেয়াদ শেষ হয়ে গেছে';

  @override
  String get databaseInvalidToken => 'নির্দিষ্ট প্রমাণীকরণ টোকেনটি অবৈধ।';

  @override
  String get missingPhoneNumber => 'মোবাইল নম্বর খালি রাখা যাবে না।';

  @override
  String get invalidPhoneNumber => 'দয়া করে একটি বৈধ মোবাইল নম্বর দিন';

  @override
  String get invalidVerificationCode => 'অবৈধ OTP';

  @override
  String get missingVerificationCode => 'অবৈধ OTP';

  @override
  String get codeExpired =>
      'OTP এর মেয়াদ শেষ হয়ে গেছে। আবার চেষ্টা করতে আবার পাঠান।';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError => 'একটি অজানা নিবন্ধন ত্রুটি ঘটেছে।';

  @override
  String get profileImageUploadError => 'প্রোফাইল ছবি আপলোড করা যাচ্ছে না।';

  @override
  String get profileImageDeleteError => 'প্রোফাইল ছবি মুছে ফেলা যাচ্ছে না';

  @override
  String get clickHereForMoreInfo => 'যোগাযোগের তথ্যের জন্য এখানে ক্লিক করুন';

  @override
  String unknownDatabaseError(String message) {
    return 'একটি অজানা ডেটাবেস ত্রুটি: $message';
  }

  @override
  String get continue_to_quiz => 'কুইজে চালিয়ে যান';

  @override
  String get continue_to_dashboard => 'ড্যাশবোর্ডে চালিয়ে যান';

  @override
  String get cancel => 'বাতিল করুন';

  @override
  String get done => 'সম্পন্ন';

  @override
  String get next => 'পরবর্তী';

  @override
  String get verify => 'যাচাই করুন';

  @override
  String get phone_number => 'ফোন নম্বর';

  @override
  String get phone_verification => 'ফোন যাচাইকরণ';

  @override
  String get otp => 'ওটিপি';

  @override
  String get submit => 'জমা দিন';

  @override
  String get save_details => 'বিস্তারিত সংরক্ষণ করুন';

  @override
  String get postcode => 'পোস্টকোড';

  @override
  String get enter_postcode => 'পোস্টকোড লিখুন';

  @override
  String get dob => 'জন্ম তারিখ';

  @override
  String get dob_placeholder => 'দিন / মাস / বছর';

  @override
  String get gender => 'লিঙ্গ';

  @override
  String get male => 'ম';

  @override
  String get female => 'চ';

  @override
  String get other => 'অন্যান্য';

  @override
  String get do_not_disclose => 'প্রকাশ করতে চাই না।';

  @override
  String get access_code => 'অ্যাক্সেস কোড';

  @override
  String get enter_access_code => 'অ্যাক্সেস কোড লিখুন';

  @override
  String get please_enter_access_code => 'অনুগ্রহ করে অ্যাক্সেস কোড লিখুন';

  @override
  String get resend_otp => 'ওটিপি পুনরায় পাঠান';

  @override
  String resend_otp_countdown(String time) {
    return '$time পরে ওটিপি পুনরায় পাঠান';
  }

  @override
  String get change_mobile => 'মোবাইল পরিবর্তন করুন';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'আমরা আপনার মোবাইল নম্বর $mobileNumber এ একটি OTP পাঠিয়েছি।';
  }

  @override
  String get well_done => 'দারুন! নিবন্ধন সফল।';

  @override
  String get registration_text =>
      'আপনার নিবন্ধন এখন সম্পূর্ণ হয়েছে, তবে অ্যাপটি অ্যাক্সেস করতে আপনাকে নিম্নলিখিত প্রক্রিয়ায় কুইজটি সম্পন্ন করতে হবে। কুইজটি পাস করতে সাহায্য করার জন্য আপনি শিক্ষামূলক ভিডিও দেখতে পারেন। যদি আপনি অ্যাক্সেস কোড দিয়ে থাকেন, তাহলে আপনি কুইজ প্রক্রিয়াটি বাইপাস করতে এই কোডটি ব্যবহার করতে পারেন।';

  @override
  String get continue_button => 'চালিয়ে যান';

  @override
  String get watch_text => 'ঘড়ি';

  @override
  String get quiz_text => 'কুইজ';

  @override
  String get finish_text => 'শেষ';

  @override
  String get congratulations => 'অভিনন্দন';

  @override
  String get not_eligible_for_transaction => 'লেনদেনের জন্য যোগ্য নয়';

  @override
  String get to_scan_again => 'আবার স্ক্যান করতে!';

  @override
  String get oh_no => 'ওহ.. না..';

  @override
  String get oops => 'ওহো';

  @override
  String get transaction_successful => 'লেনদেন সফল!';

  @override
  String get quiz_completion_text_one =>
      'আপনি সফলভাবে কুইজটি সম্পন্ন করেছেন এবং eC-কার্ড স্কিমে গৃহীত হয়েছেন। আপনি এখন আমাদের অনুমোদিত স্থানের তালিকা অ্যাক্সেস করতে পারবেন এবং আপনার বিনামূল্যে কনডম সরবরাহ সংগ্রহ করতে পারবেন। অনুগ্রহ করে নিশ্চিত করুন যে অ্যাপটি অবস্থান পরিষেবা এবং আপনার ক্যামেরা অ্যাক্সেস করতে পারে।';

  @override
  String get quiz_completion_text_two =>
      'যখন আপনি আপনার ভেন্যুতে আসবেন, তখন তাদের জানান যে আপনি যৌন স্বাস্থ্য ইসি-কার্ড স্কিমের সদস্য এবং আপনি আপনার বিনামূল্যের কনডম সংগ্রহ করতে চান। আপনার কনডম সরবরাহ করার আগে লেনদেন অনুমোদনের জন্য আপনাকে অ্যাপ ব্যবহার করে একটি QR কোড স্ক্যান করতে বলা হবে।';

  @override
  String get quiz_completion_text_three =>
      'আপনার যদি কোনও সমস্যা হয় তবে দয়া করে পরিষেবা গোয়েন্দা কেন্দ্রের সাথে যোগাযোগ করুন।';

  @override
  String get quiz_completion_text_four =>
      'অনুগ্রহ করে মনে রাখবেন: কনডম একটি নির্দিষ্ট পরিমাণে, একই আকার এবং ধরণের সরবরাহ করা হয়। আপনি যেকোনো ৭ দিনের মধ্যে কেবল একবার সংগ্রহ করতে পারবেন।';

  @override
  String get error_in_playing_video =>
      'ভিডিওটি চালানোর সময় একটি ত্রুটি হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন!!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'দয়া করে শর্তাবলী মেনে নিন।';

  @override
  String get user_not_found => 'ব্যবহারকারী খুঁজে পাওয়া যায়নি';

  @override
  String get user_disabled => 'ব্যবহারকারী অক্ষম করা হয়েছে';

  @override
  String get missing_phone_number => 'ফোন নম্বর নেই';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'লগআউট';

  @override
  String get are_you_sure_logout => 'আপনি কি নিশ্চিত যে আপনি লগআউট করতে চান?';

  @override
  String get delete_account => 'অ্যাকাউন্ট মুছুন';

  @override
  String get support => 'সমর্থন';

  @override
  String get ivts => 'আইভিটিএস';

  @override
  String get privacy_policy => 'গোপনীয়তা ও নীতি';

  @override
  String get accessibility_statement => 'অ্যাক্সেসিবিলিটি বিবৃতি';

  @override
  String get language => 'ভাষা';

  @override
  String get selectLanguage => 'ভাষা নির্বাচন কর';

  @override
  String get venues => 'স্থান';

  @override
  String get education => 'শিক্ষা';

  @override
  String get message => 'বার্তা';

  @override
  String get account => 'হিসাব';

  @override
  String get orderCompleted => 'অর্ডার সম্পন্ন হয়েছে';

  @override
  String get transactionDetails => 'লেনদেনের বিবরণ';

  @override
  String get close => 'বন্ধ করা';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return '$date $time GMT-এ আপনার সাম্প্রতিক লেনদেনের জন্য ধন্যবাদ। আপনি পরবর্তী পিক-আপটি পরে করতে পারবেন';
  }

  @override
  String get countdownDay => 'দিন';

  @override
  String get countdownHour => 'ঘন্টা';

  @override
  String get countdownMin => 'মিনিট';

  @override
  String get countdownSec => 'সেকেন্ড';

  @override
  String get welcomeToEcCard => 'eC-কার্ড অ্যাপে স্বাগতম।';

  @override
  String get registrationDisclaimer =>
      'দয়া করে মনে রাখবেন এই অ্যাপটি জরুরি গর্ভনিরোধকগুলির জন্য নয়। যদি আপনার এগুলোর প্রয়োজন হয়, তাহলে অনুগ্রহ করে সরাসরি আপনার স্থানীয় ফার্মেসি বা যৌন স্বাস্থ্য পরিষেবার সাথে যোগাযোগ করুন।';

  @override
  String get videos => 'ভিডিও';

  @override
  String get documents => 'কাগজপত্র';

  @override
  String get weblinks => 'ওয়েবলিঙ্ক';

  @override
  String get no_weblinks => 'কোনো শিক্ষামূলক ওয়েবলিঙ্ক পাওয়া যায়নি';

  @override
  String get weblink_opens_in_browser => 'ব্রাউজারে খোলে';

  @override
  String sizeLabel(String size) {
    return 'আকার: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count বার দেখা হয়েছে';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'দোকান';

  @override
  String get kiosk => 'কিয়স্ক';

  @override
  String get search => 'অনুসন্ধান করুন';

  @override
  String get addressLabel => 'ঠিকানা::';

  @override
  String get notesLabel => 'নোট:';

  @override
  String get directions => 'দিকনির্দেশনা';

  @override
  String get noKiosksAvailable => 'বর্তমানে কোনও কিয়স্ক উপলব্ধ নেই।';

  @override
  String get noNotificationsYet => 'এখনও কোনও বিজ্ঞপ্তি নেই!';

  @override
  String get selectProduct => 'পণ্য নির্বাচন করুন';

  @override
  String get noActiveProducts => 'এই দোকানে কোনও সক্রিয় পণ্য পাওয়া যায়নি।';

  @override
  String get productDescription => 'পণ্যের বর্ণনা';

  @override
  String get productSelectionWarning =>
      'অনুগ্রহ করে নিশ্চিত করুন যে আপনি সঠিক নির্বাচন করেছেন কারণ প্রতি অর্ডার সময়কালে শুধুমাত্র একটি নির্বাচন অনুমোদিত।';

  @override
  String get confirmSelection => 'নির্বাচন নিশ্চিত করুন';

  @override
  String get productDescriptionLabel => 'পণ্যের বর্ণনা:';

  @override
  String get back => 'পিছনে';

  @override
  String get confirm => 'নিশ্চিত করুন';

  @override
  String get skip => 'এড়িয়ে যান';

  @override
  String get settings => 'সেটিংস';

  @override
  String get systemTheme => 'সিস্টেম থিম';

  @override
  String get lightTheme => 'হালকা থিম';

  @override
  String get darkTheme => 'ডার্ক থিম';

  @override
  String get transactions => 'লেনদেন';

  @override
  String get allowUnlimitedTransactions => 'সীমাহীন লেনদেনের অনুমতি দেবেন?';

  @override
  String get delete => 'মুছুন';

  @override
  String get delete_account_warning =>
      'একবার আপনি আপনার অ্যাকাউন্ট মুছে ফেললে, আপনার সমস্ত ভিজিট রেকর্ড স্থায়ীভাবে মুছে যাবে';

  @override
  String get additional_registration_questions => 'অতিরিক্ত নিবন্ধন প্রশ্ন';

  @override
  String submission_failed(String error) {
    return 'জমা দেওয়া ব্যর্থ হয়েছে: $error';
  }

  @override
  String get no_questions_available => 'কোনো প্রশ্ন উপলব্ধ নেই।';

  @override
  String get select_option => 'বিকল্প নির্বাচন করুন';

  @override
  String get please_select_option => 'অনুগ্রহ করে একটি বিকল্প নির্বাচন করুন';

  @override
  String get select_options => 'বিকল্পগুলি নির্বাচন করুন';

  @override
  String get please_select_at_least_one =>
      'অনুগ্রহ করে কমপক্ষে একটি বিকল্প নির্বাচন করুন';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get contact_information => 'যোগাযোগের তথ্য';

  @override
  String get send_support_message => 'সহায়তা বার্তা পাঠান';

  @override
  String get title_hint => 'শিরোনাম';

  @override
  String get title_cannot_be_empty => 'শিরোনাম খালি রাখা যাবে না';

  @override
  String get description_hint => 'বিবরণ';

  @override
  String get description_cannot_be_empty => 'বিবরণ খালি রাখা যাবে না';

  @override
  String get email_invalid => 'দয়া করে একটি বৈধ ইমেইল ঠিকানা দিন';

  @override
  String get email_hint => 'ই-মেইল';

  @override
  String get add_attachment => 'সংযুক্তি যোগ করুন';

  @override
  String get name_label => 'নাম: ';

  @override
  String get email_label => 'ইমেইল: ';

  @override
  String get contact_number_label => 'যোগাযোগ নম্বর: ';

  @override
  String get enter_otp_delete_account => 'আপনার অ্যাকাউন্ট মুছতে OTP লিখুন';

  @override
  String get delete_confirm_warning =>
      'জমা দেওয়ার পরে, আপনার সমস্ত ভিজিট রেকর্ড স্থায়ীভাবে মুছে যাবে। আপনি কি চালিয়ে যেতে চান?';

  @override
  String get unexpected_error_try_again =>
      'অপ্রত্যাশিত ত্রুটি! অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get gallery => 'গ্যালারি';

  @override
  String get field_is_mandatory => 'এই ক্ষেত্রটি আবশ্যক';

  @override
  String get current_location => 'বর্তমান অবস্থান';

  @override
  String get submitted_successfully => 'সফলভাবে জমা দেওয়া হয়েছে!';

  @override
  String get failed_to_load_profile => 'প্রোফাইল ডেটা লোড করতে ব্যর্থ';

  @override
  String get api_exception_not_implemented =>
      'এপিআই ব্যতিক্রম বাস্তবায়িত হয়নি';

  @override
  String get api_exception_request_cancelled =>
      'এপিআই ব্যতিক্রম অনুরোধ বাতিল করা হয়েছে';

  @override
  String get api_exception_internal_server_error =>
      'এপিআই ব্যতিক্রম অভ্যন্তরীণ সার্ভার ত্রুটি';

  @override
  String get api_exception_not_found => 'এপিআই ব্যতিক্রম পাওয়া যায়নি';

  @override
  String get api_exception_service_unavailable =>
      'এপিআই ব্যতিক্রম পরিষেবা অনুপলব্ধ';

  @override
  String get api_exception_method_not_allowed =>
      'এপিআই ব্যতিক্রম পদ্ধতি অনুমোদিত নয়';

  @override
  String get api_exception_bad_request => 'এপিআই ব্যতিক্রম ত্রুটিপূর্ণ অনুরোধ';

  @override
  String get api_exception_unauthorized_request =>
      'এপিআই ব্যতিক্রম অননুমোদিত অনুরোধ';

  @override
  String get api_exception_unexpected_error =>
      'এপিআই ব্যতিক্রম অপ্রত্যাশিত ত্রুটি';

  @override
  String get api_exception_request_timeout =>
      'এপিআই ব্যতিক্রম অনুরোধের সময়সীমা';

  @override
  String get api_exception_no_internet_connection =>
      'এপিআই ত্রুটি: ইন্টারনেট সংযোগ নেই';

  @override
  String get api_exception_send_timeout => 'এপিআই ব্যতিক্রম প্রেরণের সময়সীমা';

  @override
  String get api_exception_conflict => 'এপিআই ব্যতিক্রম দ্বন্দ্ব';

  @override
  String get api_exception_unable_to_process_request =>
      'এপিআই ব্যতিক্রমের কারণে অনুরোধ প্রক্রিয়া করা সম্ভব হয়নি';

  @override
  String get api_exception_unable_to_perform_action =>
      'এপিআই ব্যতিক্রমের কারণে কাজটি সম্পাদন করা সম্ভব হচ্ছে না';

  @override
  String get api_exception_unauthorized_exception =>
      'এপিআই ব্যতিক্রম অননুমোদিত ব্যতিক্রম';

  @override
  String get api_exception_default_error => 'এপিআই ব্যতিক্রম ডিফল্ট ত্রুটি';

  @override
  String get api_exception_format_exception =>
      'এপিআই ব্যতিক্রম ফরম্যাট ব্যতিক্রম';

  @override
  String get api_exception_not_acceptable => 'এপিআই ব্যতিক্রম গ্রহণযোগ্য নয়';

  @override
  String get version_label => 'সংস্করণ';

  @override
  String get update_available_title => 'আপডেট উপলব্ধ';

  @override
  String get update_required_title => 'আপডেট প্রয়োজন';

  @override
  String get update_available_message =>
      'অ্যাপের একটি নতুন সংস্করণ উপলব্ধ। সর্বশেষ বৈশিষ্ট্য ও সংশোধন পেতে এখনই আপডেট করুন।';

  @override
  String get update_required_message =>
      'অ্যাপের এই সংস্করণটি আর সমর্থিত নয়। চালিয়ে যেতে অনুগ্রহ করে আপডেট করুন।';

  @override
  String get update_now => 'এখনই আপডেট করুন';

  @override
  String get update_later => 'পরে';

  @override
  String get permission_denied => 'অনুমতি নেই';

  @override
  String get online => 'অনলাইন';

  @override
  String get noProductsFound => 'কোনো পণ্য পাওয়া যায়নি';

  @override
  String get failedToLoadProducts => 'পণ্য লোড করা যায়নি।';

  @override
  String get readMore => 'আরও পড়ুন';

  @override
  String get notEligibleToOrderNow => 'আপনি এখন অর্ডার করার যোগ্য নন।';

  @override
  String get productDetails => 'পণ্যের বিবরণ';

  @override
  String get orderNow => 'এখনই অর্ডার করুন';

  @override
  String get provideAddressAndContact =>
      'অর্ডারের জন্য আপনার ঠিকানা\nএবং যোগাযোগ নম্বর দিন';

  @override
  String get streetRequired => 'রাস্তা*';

  @override
  String get addressLineTwo => 'ঠিকানার দ্বিতীয় লাইন';

  @override
  String get townCityRequired => 'শহর/নগর*';

  @override
  String get postcodeRequired => 'পোস্টকোড*';

  @override
  String get contactNoRequired => 'যোগাযোগ নম্বর*';

  @override
  String get requiredField => 'প্রয়োজনীয়';

  @override
  String get onlineStore => 'অনলাইন স্টোর';

  @override
  String get confirmDeliveryInfo => 'ডেলিভারি তথ্য নিশ্চিত করুন';

  @override
  String get failedToPlaceOrder =>
      'অর্ডার করা যায়নি। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get unexpectedErrorOccurred => 'একটি অপ্রত্যাশিত ত্রুটি ঘটেছে';

  @override
  String get orderBlockWarning =>
      'পরবর্তী অর্ডার করার জন্য আপনাকে ৭ দিনের জন্য ব্লক করা হবে।';

  @override
  String get orderPlaced => 'অর্ডার করা হয়েছে';

  @override
  String get orderConfirmed => 'আপনার অর্ডার এখন নিশ্চিত হয়েছে।';

  @override
  String get orderDetails => 'অর্ডারের বিবরণ';

  @override
  String get productNameLabel => 'পণ্যের নাম:';

  @override
  String get venueNameLabel => 'স্থানের নাম:';

  @override
  String get orderDateLabel => 'অর্ডারের তারিখ:';

  @override
  String get orderTimeLabel => 'অর্ডারের সময়:';

  @override
  String get orderBlockedSevenDays =>
      'পরবর্তী অর্ডার করার জন্য\nআপনাকে ৭ দিনের জন্য ব্লক করা হয়েছে।';

  @override
  String get openingTimesText => 'খোলার সময়';

  @override
  String get openingHoursMonday => 'সোমবার';

  @override
  String get openingHoursTuesday => 'মঙ্গলবার';

  @override
  String get openingHoursWednesday => 'বুধবার';

  @override
  String get openingHoursThursday => 'বৃহস্পতিবার';

  @override
  String get openingHoursFriday => 'শুক্রবার';

  @override
  String get openingHoursSaturday => 'শনিবার';

  @override
  String get openingHoursSunday => 'রবিবার';

  @override
  String get openingHoursMonShort => 'সোম';

  @override
  String get openingHoursTueShort => 'মঙ্গল';

  @override
  String get openingHoursWedShort => 'বুধ';

  @override
  String get openingHoursThuShort => 'বৃহস্পতি';

  @override
  String get openingHoursFriShort => 'শুক্র';

  @override
  String get openingHoursSatShort => 'শনি';

  @override
  String get openingHoursSunShort => 'রবি';

  @override
  String get openingHoursClosed => 'বন্ধ';

  @override
  String get openingHoursAnd => 'এবং';

  @override
  String get openingHoursTo => 'থেকে';

  @override
  String get orderHistory => 'অর্ডারের ইতিহাস';

  @override
  String get noOrdersFound => 'কোনও অর্ডার পাওয়া যায়নি';

  @override
  String get failedToLoadOrderHistory =>
      'অর্ডারের ইতিহাস লোড করা যায়নি। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get orderStatusLabel => 'স্থিতি:';

  @override
  String get deliveryAddressLabel => 'ডেলিভারি ঠিকানা:';

  @override
  String get retry => 'আবার চেষ্টা করুন';

  @override
  String get something_went_wrong =>
      'কিছু একটা ভুল হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get videoPlay => 'চালান';

  @override
  String get videoPause => 'বিরতি';

  @override
  String get videoMute => 'শব্দ বন্ধ';

  @override
  String get videoUnmute => 'শব্দ চালু';

  @override
  String get videoUnavailable => 'এই ভিডিওটি উপলব্ধ নয়।';

  @override
  String get videoFullScreen => 'পূর্ণ স্ক্রিন';

  @override
  String get videoExitFullScreen => 'পূর্ণ স্ক্রিন বন্ধ করুন';

  @override
  String get videoSeek => 'ভিডিওর অবস্থান';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes মিনিট $seconds সেকেন্ড';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$duration-এর মধ্যে $position';
  }

  @override
  String get payloadTooLarge =>
      'ফাইলটি পাঠানোর জন্য অনেক বড়। অনুগ্রহ করে ছোট একটি ফাইল বেছে নিন।';

  @override
  String get tooManyRequests =>
      'অনেকবার চেষ্টা করা হয়েছে। অনুগ্রহ করে একটু অপেক্ষা করে আবার চেষ্টা করুন।';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'অনেকবার চেষ্টা করা হয়েছে। অনুগ্রহ করে $seconds সেকেন্ড পরে আবার চেষ্টা করুন।';
  }

  @override
  String get serverError =>
      'আমাদের দিকে কিছু ভুল হয়েছে। অনুগ্রহ করে কিছুক্ষণ পরে আবার চেষ্টা করুন।';

  @override
  String get serviceUnavailable =>
      'পরিষেবাটি সাময়িকভাবে অনুপলব্ধ। অনুগ্রহ করে কিছুক্ষণ পরে আবার চেষ্টা করুন।';

  @override
  String get backButtonLabel => 'ফিরে যান';

  @override
  String get scanQrCode => 'QR কোড স্ক্যান করুন';

  @override
  String get attachedImage => 'সংযুক্ত ছবি';

  @override
  String get chooseDateOfBirth => 'জন্ম তারিখ বেছে নিন';
}
