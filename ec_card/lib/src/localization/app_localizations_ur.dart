// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'ec_card_app';

  @override
  String get login => 'لاگ ان کریں۔';

  @override
  String get mobile_no => 'موبائل نمبر';

  @override
  String get enter_mobile_no => 'موبائل نمبر درج کریں۔';

  @override
  String get new_user => 'نیا صارف؟';

  @override
  String get register_now => ' ابھی رجسٹر کریں۔';

  @override
  String get register => 'رجسٹر کریں۔';

  @override
  String get terms_condition => 'شرائط و ضوابط';

  @override
  String get app_terms_conditions => 'ایپس کی شرائط و ضوابط';

  @override
  String get accept_close => 'قبول کریں اور بند کریں۔';

  @override
  String get register_no => 'رجسٹر نمبر';

  @override
  String get register_text_one =>
      'ہمیں آپ کو ون ٹائم پاس ورڈ بھیج کر آپ کے موبائل نمبر کی تصدیق کرنی ہوگی۔';

  @override
  String get register_text_two =>
      'براہ کرم بغیر کسی سابقے کے اپنا موبائل نمبر درج کریں اور جمع کرانے کا بٹن دبائیں۔';

  @override
  String get enable_permission => 'اجازت کو فعال کریں۔';

  @override
  String get allow_permission =>
      'براہ کرم آپریشن مکمل کرنے کے لیے دستی طور پر اجازت دیں۔';

  @override
  String get dismiss => 'برطرف کرنا';

  @override
  String get open_settings => 'ترتیبات کھولیں۔';

  @override
  String get unexpectedError => 'ایک غیر متوقع خرابی پیش آ گئی۔';

  @override
  String get noInternetConnection => 'انٹرنیٹ کنکشن نہیں ہے۔';

  @override
  String get notFound => 'نہیں ملا';

  @override
  String get databaseDisconnected =>
      'نیٹ ورک منقطع ہونے کی وجہ سے آپریشن کو روکنا پڑا';

  @override
  String get datatbaseExpiredToken =>
      'فراہم کردہ تصدیقی ٹوکن کی میعاد ختم ہو گئی ہے۔';

  @override
  String get databaseInvalidToken => 'مخصوص تصدیقی ٹوکن غلط ہے۔';

  @override
  String get missingPhoneNumber => 'موبائل نمبر خالی نہیں ہو سکتا';

  @override
  String get invalidPhoneNumber => 'براہ کرم ایک درست موبائل نمبر فراہم کریں۔';

  @override
  String get invalidVerificationCode => 'غلط OTP';

  @override
  String get missingVerificationCode => 'غلط OTP';

  @override
  String get codeExpired =>
      'OTP کی میعاد ختم ہو گئی ہے۔ براہ کرم دوبارہ کوشش کرنے کے لیے دوبارہ بھیجیں۔';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError => 'ایک نامعلوم رجسٹریشن کی خرابی پیش آگئی';

  @override
  String get profileImageUploadError => 'پروفائل تصویر اپ لوڈ کرنے سے قاصر';

  @override
  String get profileImageDeleteError => 'پروفائل تصویر کو حذف کرنے سے قاصر';

  @override
  String get clickHereForMoreInfo => 'رابطہ کی معلومات کے لیے یہاں کلک کریں۔';

  @override
  String unknownDatabaseError(String message) {
    return 'ڈیٹا بیس کی ایک نامعلوم خرابی: $message';
  }

  @override
  String get continue_to_quiz => 'کوئز جاری رکھیں';

  @override
  String get continue_to_dashboard => 'ڈیش بورڈ پر جاری رکھیں';

  @override
  String get cancel => 'منسوخ کریں۔';

  @override
  String get done => 'ہو گیا';

  @override
  String get next => 'اگلا';

  @override
  String get verify => 'تصدیق کریں۔';

  @override
  String get phone_number => 'فون نمبر';

  @override
  String get phone_verification => 'فون کی تصدیق';

  @override
  String get otp => 'OTP';

  @override
  String get submit => 'جمع کروائیں۔';

  @override
  String get save_details => 'تفصیلات محفوظ کریں۔';

  @override
  String get postcode => 'پوسٹ کوڈ';

  @override
  String get enter_postcode => 'پوسٹ کوڈ درج کریں۔';

  @override
  String get dob => 'تاریخ پیدائش';

  @override
  String get dob_placeholder => 'DD/MM/YYYY';

  @override
  String get gender => 'جنس';

  @override
  String get male => 'ایم';

  @override
  String get female => 'ایف';

  @override
  String get other => 'دیگر';

  @override
  String get do_not_disclose => 'ظاہر نہیں کرنا چاہتے';

  @override
  String get access_code => 'رسائی کوڈ';

  @override
  String get enter_access_code => 'رسائی کوڈ درج کریں۔';

  @override
  String get please_enter_access_code => 'براہ کرم رسائی کوڈ درج کریں۔';

  @override
  String get resend_otp => 'OTP دوبارہ بھیجیں۔';

  @override
  String resend_otp_countdown(String time) {
    return '$time میں OTP دوبارہ بھیجیں۔';
  }

  @override
  String get change_mobile => 'موبائل تبدیل کریں۔';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'ہم نے آپ کے موبائل نمبر $mobileNumber پر ایک OTP بھیجا ہے۔';
  }

  @override
  String get well_done => 'شاباش! رجسٹریشن کامیاب';

  @override
  String get registration_text =>
      'آپ کی رجسٹریشن اب مکمل ہو گئی ہے، تاہم، ایپ تک رسائی حاصل کرنے کے لیے آپ کو درج ذیل عمل میں کوئز مکمل کرنے کی ضرورت ہے۔ کوئز پاس کرنے میں مدد کے لیے آپ تعلیمی ویڈیوز دیکھ سکتے ہیں۔ اگر آپ نے رسائی کوڈ دیا ہے، تو آپ کوئز کے عمل کو نظرانداز کرنے کے لیے اس کوڈ کا استعمال کر سکتے ہیں۔';

  @override
  String get continue_button => 'جاری رکھیں';

  @override
  String get watch_text => 'دیکھو';

  @override
  String get quiz_text => 'کوئز';

  @override
  String get finish_text => 'ختم کرنا';

  @override
  String get congratulations => 'مبارک ہو';

  @override
  String get not_eligible_for_transaction => 'لین دین کے لیے اہل نہیں ہے۔';

  @override
  String get to_scan_again => 'دوبارہ اسکین کرنے کے لیے!';

  @override
  String get oh_no => 'اوہ نہیں..';

  @override
  String get oops => 'اوہ';

  @override
  String get transaction_successful => 'لین دین کامیاب!';

  @override
  String get quiz_completion_text_one =>
      'آپ نے کامیابی کے ساتھ کوئز مکمل کر لیا ہے اور آپ کو eC-Card سکیم میں قبول کر لیا گیا ہے۔ اب آپ ہماری منظور شدہ جگہوں کی فہرست تک رسائی حاصل کر سکیں گے اور اپنی مفت کنڈوم سپلائی جمع کر سکیں گے۔ براہ کرم یقینی بنائیں کہ ایپ لوکیشن سروسز اور آپ کے کیمرے تک رسائی حاصل کر سکتی ہے۔';

  @override
  String get quiz_completion_text_two =>
      'جب آپ اپنے مقام پر جائیں تو براہ کرم انہیں مطلع کریں کہ آپ جنسی صحت ای سی کارڈ اسکیم کے رکن ہیں اور یہ کہ آپ اپنے مفت کنڈوم جمع کرنا چاہیں گے۔ آپ کو کنڈوم کی فراہمی سے پہلے ٹرانزیکشن کو منظور کرنے کے لیے ایپ کا استعمال کرتے ہوئے QR کوڈ اسکین کرنے کے لیے کہا جائے گا۔';

  @override
  String get quiz_completion_text_three =>
      'اگر آپ کو کوئی پریشانی ہو تو برائے مہربانی سروس انٹیلی جنس سنٹر سے رابطہ کریں۔';

  @override
  String get quiz_completion_text_four =>
      'براہ کرم نوٹ کریں: کنڈوم ایک مقررہ مقدار میں، ایک سائز اور قسم میں فراہم کیے جاتے ہیں۔ آپ کسی بھی 7 دن کی مدت میں صرف ایک مجموعہ بنا سکتے ہیں۔';

  @override
  String get error_in_playing_video =>
      'ویڈیو چلانے میں ایک خرابی ہے۔ براہ کرم دوبارہ کوشش کریں!!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'براہ کرم شرائط و ضوابط کو قبول کریں۔';

  @override
  String get user_not_found => 'صارف نہیں ملا';

  @override
  String get user_disabled => 'صارف غیر فعال';

  @override
  String get missing_phone_number => 'غائب فون نمبر';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'لاگ آؤٹ';

  @override
  String get are_you_sure_logout => 'کیا آپ واقعی لاگ آؤٹ کرنا چاہتے ہیں؟';

  @override
  String get delete_account => 'اکاؤنٹ حذف کریں۔';

  @override
  String get support => 'حمایت';

  @override
  String get ivts => 'آئی وی ٹی ایس';

  @override
  String get privacy_policy => 'رازداری اور پالیسی';

  @override
  String get accessibility_statement => 'قابلِ رسائی بیان';

  @override
  String get language => 'زبان';

  @override
  String get selectLanguage => 'زبان منتخب کریں۔';

  @override
  String get venues => 'مقامات';

  @override
  String get education => 'تعلیم';

  @override
  String get message => 'پیغام';

  @override
  String get account => 'اکاؤنٹ';

  @override
  String get orderCompleted => 'آرڈر مکمل ہو گیا۔';

  @override
  String get transactionDetails => 'لین دین کی تفصیلات';

  @override
  String get close => 'بند';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return '$date $time GMT پر آپ کے حالیہ لین دین کا شکریہ۔ آپ اپنا اگلا پک اپ اس کے بعد کر سکتے ہیں۔ ';
  }

  @override
  String get countdownDay => 'دن';

  @override
  String get countdownHour => 'گھنٹہ';

  @override
  String get countdownMin => 'منٹ';

  @override
  String get countdownSec => 'سیکنڈ';

  @override
  String get welcomeToEcCard => 'ای سی کارڈ ایپ میں خوش آمدید';

  @override
  String get registrationDisclaimer =>
      'براہ کرم نوٹ کریں کہ یہ ایپ ہنگامی مانع حمل ادویات کے لیے نہیں ہے۔ اگر آپ کو ان کی ضرورت ہو تو براہ کرم اپنی مقامی دواخانہ یا جنسی صحت کی خدمت سے براہ راست رابطہ کریں۔';

  @override
  String get videos => 'ویڈیوز';

  @override
  String get documents => 'دستاویزات';

  @override
  String get weblinks => 'ویب لنکس';

  @override
  String get no_weblinks => 'کوئی تعلیمی ویب لنک نہیں ملا';

  @override
  String get weblink_opens_in_browser => 'براؤزر میں کھلتا ہے';

  @override
  String sizeLabel(String size) {
    return 'سائز: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count ملاحظات';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'اسٹورز';

  @override
  String get kiosk => 'کیوسک';

  @override
  String get search => 'تلاش کریں۔';

  @override
  String get addressLabel => 'پتہ: ';

  @override
  String get notesLabel => 'نوٹس: ';

  @override
  String get directions => 'ہدایات';

  @override
  String get noKiosksAvailable => 'فی الحال کوئی کیوسک دستیاب نہیں ہے۔';

  @override
  String get noNotificationsYet => 'ابھی تک کوئی اطلاع نہیں ہے!';

  @override
  String get selectProduct => 'پروڈکٹ کو منتخب کریں۔';

  @override
  String get noActiveProducts => 'اس اسٹور میں کوئی فعال پروڈکٹس نہیں ملے۔';

  @override
  String get productDescription => 'مصنوعات کی تفصیل';

  @override
  String get productSelectionWarning =>
      'براہ کرم یقینی بنائیں کہ آپ صحیح انتخاب کرتے ہیں کیونکہ ہر آرڈر کی مدت میں صرف ایک انتخاب کی اجازت ہے۔';

  @override
  String get confirmSelection => 'انتخاب کی تصدیق کریں۔';

  @override
  String get productDescriptionLabel => 'مصنوعات کی تفصیل:';

  @override
  String get back => 'پیچھے';

  @override
  String get confirm => 'تصدیق کریں۔';

  @override
  String get skip => 'چھوڑیں۔';

  @override
  String get settings => 'ترتیبات';

  @override
  String get systemTheme => 'سسٹم تھیم';

  @override
  String get lightTheme => 'ہلکی تھیم';

  @override
  String get darkTheme => 'ڈارک تھیم';

  @override
  String get transactions => 'لین دین';

  @override
  String get allowUnlimitedTransactions => 'لامحدود لین دین کی اجازت دیں؟';

  @override
  String get delete => 'حذف کریں';

  @override
  String get delete_account_warning =>
      'ایک بار جب آپ اپنا اکاؤنٹ حذف کر دیں گے، آپ کے تمام وزٹ ریکارڈ مستقل طور پر حذف ہو جائیں گے';

  @override
  String get additional_registration_questions => 'اضافی رجسٹریشن سوالات';

  @override
  String submission_failed(String error) {
    return 'جمع کرانا ناکام: $error';
  }

  @override
  String get no_questions_available => 'کوئی سوالات دستیاب نہیں ہیں۔';

  @override
  String get select_option => 'آپشن منتخب کریں';

  @override
  String get please_select_option => 'براہ کرم ایک آپشن منتخب کریں';

  @override
  String get select_options => 'آپشنز منتخب کریں';

  @override
  String get please_select_at_least_one =>
      'براہ کرم کم از کم ایک آپشن منتخب کریں';

  @override
  String get ok => 'ٹھیک ہے';

  @override
  String get contact_information => 'رابطے کی معلومات';

  @override
  String get send_support_message => 'سپورٹ پیغام بھیجیں';

  @override
  String get title_hint => 'عنوان';

  @override
  String get title_cannot_be_empty => 'عنوان خالی نہیں ہو سکتا';

  @override
  String get description_hint => 'تفصیل';

  @override
  String get description_cannot_be_empty => 'تفصیل خالی نہیں ہو سکتی';

  @override
  String get email_invalid => 'براہ کرم ایک درست ای میل ایڈریس فراہم کریں۔';

  @override
  String get email_hint => 'ای میل';

  @override
  String get add_attachment => 'منسلکہ شامل کریں';

  @override
  String get name_label => 'نام: ';

  @override
  String get email_label => 'ای میل: ';

  @override
  String get contact_number_label => 'رابطہ نمبر: ';

  @override
  String get enter_otp_delete_account =>
      'اپنا اکاؤنٹ حذف کرنے کے لیے OTP درج کریں';

  @override
  String get delete_confirm_warning =>
      'جمع کرانے کے بعد، آپ کے تمام وزٹ ریکارڈ مستقل طور پر حذف ہو جائیں گے۔ کیا آپ جاری رکھنا چاہتے ہیں؟';

  @override
  String get unexpected_error_try_again =>
      'غیر متوقع خرابی! براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get gallery => 'گیلری';

  @override
  String get field_is_mandatory => 'یہ فیلڈ لازمی ہے';

  @override
  String get current_location => 'موجودہ مقام';

  @override
  String get submitted_successfully => 'کامیابی سے جمع ہو گیا!';

  @override
  String get failed_to_load_profile => 'پروفائل ڈیٹا لوڈ کرنے میں ناکام';

  @override
  String get api_exception_not_implemented => 'API استثنیٰ نافذ نہیں کیا گیا۔';

  @override
  String get api_exception_request_cancelled =>
      'API استثنیٰ کی درخواست منسوخ کر دی گئی۔';

  @override
  String get api_exception_internal_server_error =>
      'API استثنا داخلی سرور کی خرابی۔';

  @override
  String get api_exception_not_found => 'API استثناء نہیں ملا';

  @override
  String get api_exception_service_unavailable =>
      'API استثناء سروس دستیاب نہیں ہے۔';

  @override
  String get api_exception_method_not_allowed =>
      'API استثناء کے طریقہ کی اجازت نہیں ہے۔';

  @override
  String get api_exception_bad_request => 'API استثناء خراب درخواست';

  @override
  String get api_exception_unauthorized_request =>
      'API استثناء غیر مجاز درخواست';

  @override
  String get api_exception_unexpected_error => 'API استثناء غیر متوقع خرابی۔';

  @override
  String get api_exception_request_timeout =>
      'API استثناء کی درخواست کا ٹائم آؤٹ';

  @override
  String get api_exception_no_internet_connection =>
      'API استثناء کوئی انٹرنیٹ کنکشن نہیں۔';

  @override
  String get api_exception_send_timeout => 'API استثنا بھیجنے کا ٹائم آؤٹ';

  @override
  String get api_exception_conflict => 'API استثنائی تنازعہ';

  @override
  String get api_exception_unable_to_process_request =>
      'API استثناء درخواست پر کارروائی کرنے سے قاصر ہے۔';

  @override
  String get api_exception_unable_to_perform_action =>
      'API استثناء عمل کرنے سے قاصر ہے۔';

  @override
  String get api_exception_unauthorized_exception =>
      'API استثناء غیر مجاز استثناء';

  @override
  String get api_exception_default_error => 'API استثناء ڈیفالٹ خرابی۔';

  @override
  String get api_exception_format_exception => 'API استثناء فارمیٹ استثناء';

  @override
  String get api_exception_not_acceptable => 'API استثناء قابل قبول نہیں ہے۔';

  @override
  String get version_label => 'ورژن';

  @override
  String get update_available_title => 'اپ ڈیٹ دستیاب ہے';

  @override
  String get update_required_title => 'اپ ڈیٹ ضروری ہے';

  @override
  String get update_available_message =>
      'ایپ کا نیا ورژن دستیاب ہے۔ تازہ ترین خصوصیات اور اصلاحات حاصل کرنے کے لیے ابھی اپ ڈیٹ کریں۔';

  @override
  String get update_required_message =>
      'ایپ کا یہ ورژن اب تعاون یافتہ نہیں ہے۔ جاری رکھنے کے لیے براہ کرم اپ ڈیٹ کریں۔';

  @override
  String get update_now => 'ابھی اپ ڈیٹ کریں';

  @override
  String get update_later => 'بعد میں';

  @override
  String get permission_denied => 'اجازت نامنظور';

  @override
  String get online => 'آن لائن';

  @override
  String get noProductsFound => 'کوئی مصنوعات نہیں ملیں';

  @override
  String get failedToLoadProducts => 'مصنوعات لوڈ کرنے میں ناکام۔';

  @override
  String get readMore => 'مزید پڑھیں';

  @override
  String get notEligibleToOrderNow => 'آپ ابھی آرڈر کرنے کے اہل نہیں ہیں۔';

  @override
  String get productDetails => 'مصنوعات کی تفصیلات';

  @override
  String get orderNow => 'ابھی آرڈر کریں';

  @override
  String get provideAddressAndContact =>
      'آرڈر کے لیے اپنا پتہ\nاور رابطہ نمبر فراہم کریں';

  @override
  String get streetRequired => 'گلی*';

  @override
  String get addressLineTwo => 'پتہ لائن دو';

  @override
  String get townCityRequired => 'قصبہ/شہر*';

  @override
  String get postcodeRequired => 'پوسٹ کوڈ*';

  @override
  String get contactNoRequired => 'رابطہ نمبر*';

  @override
  String get requiredField => 'ضروری';

  @override
  String get onlineStore => 'آن لائن اسٹور';

  @override
  String get confirmDeliveryInfo => 'ترسیل کی معلومات کی تصدیق کریں';

  @override
  String get failedToPlaceOrder =>
      'آرڈر دینے میں ناکام۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get unexpectedErrorOccurred => 'ایک غیر متوقع خرابی پیش آئی';

  @override
  String get orderBlockWarning =>
      'اگلا آرڈر دینے کے لیے آپ کو 7 دن کے لیے روک دیا جائے گا۔';

  @override
  String get orderPlaced => 'آرڈر دے دیا گیا';

  @override
  String get orderConfirmed => 'آپ کا آرڈر اب تصدیق ہو گیا ہے۔';

  @override
  String get orderDetails => 'آرڈر کی تفصیلات';

  @override
  String get productNameLabel => 'مصنوعات کا نام:';

  @override
  String get venueNameLabel => 'مقام کا نام:';

  @override
  String get orderDateLabel => 'آرڈر کی تاریخ:';

  @override
  String get orderTimeLabel => 'آرڈر کا وقت:';

  @override
  String get orderBlockedSevenDays =>
      'اگلا آرڈر دینے کے لیے\nآپ کو 7 دن کے لیے روک دیا گیا ہے۔';

  @override
  String get openingTimesText => 'کھلنے کے اوقات';

  @override
  String get openingHoursMonday => 'پیر';

  @override
  String get openingHoursTuesday => 'منگل';

  @override
  String get openingHoursWednesday => 'بدھ';

  @override
  String get openingHoursThursday => 'جمعرات';

  @override
  String get openingHoursFriday => 'جمعہ';

  @override
  String get openingHoursSaturday => 'ہفتہ';

  @override
  String get openingHoursSunday => 'اتوار';

  @override
  String get openingHoursMonShort => 'پیر';

  @override
  String get openingHoursTueShort => 'منگل';

  @override
  String get openingHoursWedShort => 'بدھ';

  @override
  String get openingHoursThuShort => 'جمعرات';

  @override
  String get openingHoursFriShort => 'جمعہ';

  @override
  String get openingHoursSatShort => 'ہفتہ';

  @override
  String get openingHoursSunShort => 'اتوار';

  @override
  String get openingHoursClosed => 'بند';

  @override
  String get openingHoursAnd => 'اور';

  @override
  String get openingHoursTo => 'سے';

  @override
  String get orderHistory => 'آرڈر کی تاریخ';

  @override
  String get noOrdersFound => 'کوئی آرڈر نہیں ملا';

  @override
  String get failedToLoadOrderHistory =>
      'آرڈر کی تاریخ لوڈ نہیں ہو سکی۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get orderStatusLabel => 'حیثیت:';

  @override
  String get deliveryAddressLabel => 'ترسیل کا پتہ:';

  @override
  String get retry => 'دوبارہ کوشش کریں';

  @override
  String get something_went_wrong =>
      'کچھ غلط ہو گیا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get videoPlay => 'چلائیں';

  @override
  String get videoPause => 'روکیں';

  @override
  String get videoMute => 'آواز بند';

  @override
  String get videoUnmute => 'آواز چالو';

  @override
  String get videoUnavailable => 'یہ ویڈیو دستیاب نہیں ہے۔';

  @override
  String get videoFullScreen => 'پوری اسکرین';

  @override
  String get videoExitFullScreen => 'پوری اسکرین سے باہر';

  @override
  String get videoSeek => 'ویڈیو کی پوزیشن';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes منٹ $seconds سیکنڈ';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$duration میں سے $position';
  }

  @override
  String get payloadTooLarge =>
      'یہ فائل بھیجنے کے لیے بہت بڑی ہے۔ براہ کرم چھوٹی فائل منتخب کریں۔';

  @override
  String get tooManyRequests =>
      'بہت زیادہ کوششیں۔ براہ کرم تھوڑی دیر انتظار کر کے دوبارہ کوشش کریں۔';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'بہت زیادہ کوششیں۔ براہ کرم $seconds سیکنڈ میں دوبارہ کوشش کریں۔';
  }

  @override
  String get serverError =>
      'ہماری طرف سے کچھ غلط ہو گیا۔ براہ کرم تھوڑی دیر بعد دوبارہ کوشش کریں۔';

  @override
  String get serviceUnavailable =>
      'سروس عارضی طور پر دستیاب نہیں ہے۔ براہ کرم تھوڑی دیر بعد دوبارہ کوشش کریں۔';

  @override
  String get backButtonLabel => 'پیچھے';

  @override
  String get scanQrCode => 'QR کوڈ اسکین کریں';

  @override
  String get attachedImage => 'منسلک تصویر';

  @override
  String get chooseDateOfBirth => 'تاریخ پیدائش منتخب کریں';
}
