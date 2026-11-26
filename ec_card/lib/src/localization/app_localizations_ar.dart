// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'تطبيق بطاقة ec';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get mobile_no => 'رقم الهاتف المحمول';

  @override
  String get enter_mobile_no => 'أدخل رقم الهاتف المحمول.';

  @override
  String get new_user => 'مستخدم جديد؟';

  @override
  String get register_now => 'سجل الآن';

  @override
  String get register => 'يسجل';

  @override
  String get terms_condition => 'الشروط والأحكام';

  @override
  String get app_terms_conditions => 'شروط وأحكام التطبيقات';

  @override
  String get accept_close => 'موافق وإغلاق';

  @override
  String get register_no => 'رقم التسجيل';

  @override
  String get register_text_one =>
      'نحتاج إلى التحقق من رقم هاتفك المحمول عن طريق إرسال كلمة مرور لمرة واحدة إليك.';

  @override
  String get register_text_two =>
      'يرجى إدخال رقم هاتفك المحمول بدون أي بادئات والضغط على زر الإرسال.';

  @override
  String get enable_permission => 'تفعيل الأذونات';

  @override
  String get allow_permission => 'يرجى منح الإذن يدويًا لإتمام العملية.';

  @override
  String get dismiss => 'رفض';

  @override
  String get open_settings => 'افتح الإعدادات';

  @override
  String get unexpectedError => 'حدث خطأ غير متوقع';

  @override
  String get noInternetConnection => 'لا يوجد اتصال بالإنترنت';

  @override
  String get notFound => 'غير موجود';

  @override
  String get databaseDisconnected =>
      'اضطرت العملية إلى التوقف بسبب انقطاع الشبكة';

  @override
  String get datatbaseExpiredToken => 'انتهت صلاحية رمز المصادقة المقدم.';

  @override
  String get databaseInvalidToken => 'رمز المصادقة المحدد غير صالح';

  @override
  String get missingPhoneNumber => 'لا يمكن أن يكون رقم الهاتف المحمول فارغًا';

  @override
  String get invalidPhoneNumber => 'يرجى تقديم رقم جوال صحيح';

  @override
  String get invalidVerificationCode => 'رمز التحقق لمرة واحدة غير صالح';

  @override
  String get missingVerificationCode => 'رمز التحقق لمرة واحدة غير صالح';

  @override
  String get codeExpired =>
      'انتهت صلاحية رمز التحقق لمرة واحدة. يرجى إعادة إرساله للمحاولة مرة أخرى.';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError => 'حدث خطأ غير معروف في التسجيل';

  @override
  String get profileImageUploadError => 'تعذر تحميل صورة الملف الشخصي';

  @override
  String get profileImageDeleteError => 'تعذر حذف صورة الملف الشخصي';

  @override
  String get clickHereForMoreInfo => 'انقر هنا للحصول على معلومات الاتصال';

  @override
  String unknownDatabaseError(String message) {
    return 'خطأ غير معروف في قاعدة البيانات: $message';
  }

  @override
  String get continue_to_quiz => 'تابع الاختبار';

  @override
  String get continue_to_dashboard => 'انتقل إلى لوحة التحكم';

  @override
  String get cancel => 'يلغي';

  @override
  String get done => 'منتهي';

  @override
  String get next => 'التالي';

  @override
  String get verify => 'يؤكد';

  @override
  String get phone_number => 'رقم التليفون';

  @override
  String get phone_verification => 'التحقق من رقم الهاتف';

  @override
  String get otp => 'رمز التحقق لمرة واحدة';

  @override
  String get submit => 'يُقدِّم';

  @override
  String get save_details => 'حفظ التفاصيل';

  @override
  String get postcode => 'شفرة البريد';

  @override
  String get enter_postcode => 'أدخل الرمز البريدي';

  @override
  String get dob => 'تاريخ الميلاد';

  @override
  String get dob_placeholder => 'يوم / شهر / سنة';

  @override
  String get gender => 'جنس';

  @override
  String get male => 'م';

  @override
  String get female => 'F';

  @override
  String get other => 'آخر';

  @override
  String get do_not_disclose => 'لا أرغب في الإفصاح';

  @override
  String get access_code => 'رمز الوصول';

  @override
  String get enter_access_code => 'أدخل رمز الوصول';

  @override
  String get please_enter_access_code => 'الرجاء إدخال رمز الوصول';

  @override
  String get resend_otp => 'أعد إرسال رمز التحقق لمرة واحدة';

  @override
  String resend_otp_countdown(String time) {
    return 'أعد إرسال الرمز خلال $time';
  }

  @override
  String get change_mobile => 'تغيير الهاتف المحمول';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'لقد أرسلنا رمز التحقق لمرة واحدة إلى رقم هاتفك المحمول $mobileNumber';
  }

  @override
  String get well_done => 'أحسنت! تم التسجيل بنجاح';

  @override
  String get registration_text =>
      'اكتمل تسجيلك الآن، ولكن للوصول إلى التطبيق، عليك إكمال الاختبار باتباع الخطوات التالية. يمكنك مشاهدة فيديوهات تعليمية لمساعدتك في اجتياز الاختبار. إذا كنت قد حصلت على رمز دخول، فيمكنك استخدامه لتجاوز عملية الاختبار.';

  @override
  String get continue_button => 'يكمل';

  @override
  String get watch_text => 'يشاهد';

  @override
  String get quiz_text => 'لغز';

  @override
  String get finish_text => 'ينهي';

  @override
  String get congratulations => 'تهانينا';

  @override
  String get not_eligible_for_transaction => 'غير مؤهل للمعاملة';

  @override
  String get to_scan_again => 'لإعادة المسح!';

  @override
  String get oh_no => 'أوه.. لا..';

  @override
  String get oops => 'أُووبس';

  @override
  String get transaction_successful => 'تمت العملية بنجاح!';

  @override
  String get quiz_completion_text_one =>
      'لقد أكملتَ الاختبار بنجاح وتم قبولك في برنامج بطاقة eC-Card. يمكنك الآن الوصول إلى قائمة الأماكن المعتمدة لدينا واستلام كمية الواقي الذكري المجانية. يُرجى التأكد من إمكانية وصول التطبيق إلى خدمات الموقع وكاميرا جهازك.';

  @override
  String get quiz_completion_text_two =>
      'عند زيارتك للمكان، يُرجى إبلاغهم بأنك عضو في برنامج بطاقة الصحة الجنسية الإلكترونية وأنك ترغب في استلام الواقيات الذكرية المجانية. سيُطلب منك مسح رمز الاستجابة السريعة (QR) باستخدام التطبيق للموافقة على العملية قبل استلام الواقيات.';

  @override
  String get quiz_completion_text_three =>
      'إذا واجهتك أي مشكلة، يرجى الاتصال بمركز معلومات الخدمة.';

  @override
  String get quiz_completion_text_four =>
      'يرجى الملاحظة: يتم توفير الواقيات الذكرية بكمية محددة، وبمقاس ونوع واحد. يمكنك جمعها مرة واحدة فقط خلال أي فترة سبعة أيام.';

  @override
  String get error_in_playing_video =>
      'حدث خطأ أثناء تشغيل الفيديو. يرجى المحاولة مرة أخرى!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'يرجى الموافقة على الشروط والأحكام.';

  @override
  String get user_not_found => 'لم يتم العثور على المستخدم';

  @override
  String get user_disabled => 'تم تعطيل المستخدم';

  @override
  String get missing_phone_number => 'رقم الهاتف مفقود';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get are_you_sure_logout => 'هل أنت متأكد من رغبتك في تسجيل الخروج؟';

  @override
  String get delete_account => 'حذف الحساب';

  @override
  String get support => 'يدعم';

  @override
  String get ivts => 'نظام نقل السوائل';

  @override
  String get privacy_policy => 'سياسة الخصوصية';

  @override
  String get accessibility_statement => 'بيان إمكانية الوصول';

  @override
  String get language => 'لغة';

  @override
  String get selectLanguage => 'اختر اللغة';

  @override
  String get venues => 'أماكن الفعاليات';

  @override
  String get education => 'تعليم';

  @override
  String get message => 'رسالة';

  @override
  String get account => 'حساب';

  @override
  String get orderCompleted => 'تم إتمام الطلب';

  @override
  String get transactionDetails => 'تفاصيل المعاملة';

  @override
  String get close => 'يغلق';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return 'نشكرك على معاملتك الأخيرة في $date $time بتوقيت غرينتش. يمكنك إجراء عملية الاستلام التالية بعد';
  }

  @override
  String get countdownDay => 'يوم';

  @override
  String get countdownHour => 'ساعة';

  @override
  String get countdownMin => 'مين';

  @override
  String get countdownSec => 'ثانية';

  @override
  String get welcomeToEcCard => 'مرحباً بكم في تطبيق البطاقة الإلكترونية';

  @override
  String get registrationDisclaimer =>
      'يرجى ملاحظة أن هذا التطبيق ليس مخصصاً لوسائل منع الحمل الطارئة. إذا كنتِ بحاجة إليها، فيرجى الاتصال بصيدليتك المحلية أو مركز خدمات الصحة الجنسية مباشرةً.';

  @override
  String get videos => 'مقاطع فيديو';

  @override
  String get documents => 'وثائق';

  @override
  String get weblinks => 'روابط الويب';

  @override
  String get no_weblinks => 'لا توجد روابط تعليمية';

  @override
  String get weblink_opens_in_browser => 'يفتح في المتصفح';

  @override
  String sizeLabel(String size) {
    return 'الحجم: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count مشاهدة';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'المتاجر';

  @override
  String get kiosk => 'كشك';

  @override
  String get search => 'يبحث';

  @override
  String get addressLabel => 'عنوان: ';

  @override
  String get notesLabel => 'ملحوظات: ';

  @override
  String get directions => 'التعليمات';

  @override
  String get noKiosksAvailable => 'لا تتوفر أكشاك الخدمة الذاتية حاليًا.';

  @override
  String get noNotificationsYet => 'لم تصل أي إشعارات بعد!';

  @override
  String get selectProduct => 'اختر المنتج';

  @override
  String get noActiveProducts =>
      'لم يتم العثور على أي منتجات فعالة في هذا المتجر.';

  @override
  String get productDescription => 'وصف المنتج';

  @override
  String get productSelectionWarning =>
      'يرجى التأكد من اختيارك الصحيح حيث يُسمح باختيار واحد فقط لكل فترة طلب.';

  @override
  String get confirmSelection => 'تأكيد الاختيار';

  @override
  String get productDescriptionLabel => 'وصف المنتج:';

  @override
  String get back => 'خلف';

  @override
  String get confirm => 'يتأكد';

  @override
  String get skip => 'يتخطى';

  @override
  String get settings => 'إعدادات';

  @override
  String get systemTheme => 'سمة النظام';

  @override
  String get lightTheme => 'الوضع الفاتح';

  @override
  String get darkTheme => 'الوضع الداكن';

  @override
  String get transactions => 'المعاملات';

  @override
  String get allowUnlimitedTransactions => 'هل تسمح بإجراء معاملات غير محدودة؟';

  @override
  String get delete => 'حذف';

  @override
  String get delete_account_warning =>
      'بمجرد حذف حسابك، سيتم حذف جميع سجلات زياراتك بشكل دائم';

  @override
  String get additional_registration_questions => 'أسئلة التسجيل الإضافية';

  @override
  String submission_failed(String error) {
    return 'فشل الإرسال: $error';
  }

  @override
  String get no_questions_available => 'لا توجد أسئلة متاحة.';

  @override
  String get select_option => 'اختر خيارًا';

  @override
  String get please_select_option => 'يرجى اختيار خيار';

  @override
  String get select_options => 'اختر خيارات';

  @override
  String get please_select_at_least_one => 'يرجى اختيار خيار واحد على الأقل';

  @override
  String get ok => 'موافق';

  @override
  String get contact_information => 'معلومات الاتصال';

  @override
  String get send_support_message => 'إرسال رسالة دعم';

  @override
  String get title_hint => 'العنوان';

  @override
  String get title_cannot_be_empty => 'لا يمكن أن يكون العنوان فارغًا';

  @override
  String get description_hint => 'الوصف';

  @override
  String get description_cannot_be_empty => 'لا يمكن أن يكون الوصف فارغًا';

  @override
  String get email_invalid => 'يرجى تقديم عنوان بريد إلكتروني صحيح';

  @override
  String get email_hint => 'البريد الإلكتروني';

  @override
  String get add_attachment => 'إضافة مرفق';

  @override
  String get name_label => 'الاسم: ';

  @override
  String get email_label => 'البريد الإلكتروني: ';

  @override
  String get contact_number_label => 'رقم الاتصال: ';

  @override
  String get enter_otp_delete_account => 'أدخل رمز التحقق لحذف حسابك';

  @override
  String get delete_confirm_warning =>
      'بعد الضغط على إرسال، سيتم حذف جميع سجلات زياراتك بشكل دائم. هل تريد المتابعة؟';

  @override
  String get unexpected_error_try_again =>
      'خطأ غير متوقع! يرجى المحاولة مرة أخرى.';

  @override
  String get gallery => 'المعرض';

  @override
  String get field_is_mandatory => 'هذا الحقل إلزامي';

  @override
  String get current_location => 'الموقع الحالي';

  @override
  String get submitted_successfully => 'تم الإرسال بنجاح!';

  @override
  String get failed_to_load_profile => 'فشل تحميل بيانات الملف الشخصي';

  @override
  String get api_exception_not_implemented => 'استثناء API غير مطبق';

  @override
  String get api_exception_request_cancelled => 'استثناء API تم إلغاء الطلب';

  @override
  String get api_exception_internal_server_error =>
      'استثناء API خطأ داخلي في الخادم';

  @override
  String get api_exception_not_found => 'استثناء API غير موجود';

  @override
  String get api_exception_service_unavailable =>
      'استثناء API الخدمة غير متاحة';

  @override
  String get api_exception_method_not_allowed =>
      'استثناء API الطريقة غير مسموح بها';

  @override
  String get api_exception_bad_request => 'استثناء API طلب غير صالح';

  @override
  String get api_exception_unauthorized_request =>
      'استثناء API طلب غير مصرح به';

  @override
  String get api_exception_unexpected_error => 'استثناء API خطأ غير متوقع';

  @override
  String get api_exception_request_timeout => 'استثناء API انتهت مهلة الطلب';

  @override
  String get api_exception_no_internet_connection =>
      'استثناء API لا يوجد اتصال بالإنترنت';

  @override
  String get api_exception_send_timeout => 'استثناء API انتهت مهلة الإرسال';

  @override
  String get api_exception_conflict => 'استثناء API تعارض';

  @override
  String get api_exception_unable_to_process_request =>
      'استثناء API تعذر معالجة الطلب';

  @override
  String get api_exception_unable_to_perform_action =>
      'استثناء API تعذر تنفيذ الإجراء';

  @override
  String get api_exception_unauthorized_exception =>
      'استثناء API استثناء غير مصرح به';

  @override
  String get api_exception_default_error => 'استثناء API خطأ افتراضي';

  @override
  String get api_exception_format_exception => 'استثناء API استثناء تنسيق';

  @override
  String get api_exception_not_acceptable => 'استثناء API غير مقبول';

  @override
  String get version_label => 'الإصدار';

  @override
  String get update_available_title => 'يتوفر تحديث';

  @override
  String get update_required_title => 'التحديث مطلوب';

  @override
  String get update_available_message =>
      'يتوفر إصدار جديد من التطبيق. حدّث الآن للحصول على أحدث الميزات والإصلاحات.';

  @override
  String get update_required_message =>
      'لم يعد هذا الإصدار من التطبيق مدعومًا. يُرجى التحديث للمتابعة.';

  @override
  String get update_now => 'حدّث الآن';

  @override
  String get update_later => 'لاحقًا';

  @override
  String get permission_denied => 'تم رفض الإذن';

  @override
  String get online => 'عبر الإنترنت';

  @override
  String get noProductsFound => 'لم يتم العثور على منتجات';

  @override
  String get failedToLoadProducts => 'فشل تحميل المنتجات.';

  @override
  String get readMore => 'اقرأ المزيد';

  @override
  String get notEligibleToOrderNow => 'أنت غير مؤهل للطلب الآن.';

  @override
  String get productDetails => 'تفاصيل المنتج';

  @override
  String get orderNow => 'اطلب الآن';

  @override
  String get provideAddressAndContact =>
      'يرجى تقديم عنوانك\nورقم الاتصال للطلب';

  @override
  String get streetRequired => 'الشارع*';

  @override
  String get addressLineTwo => 'سطر العنوان الثاني';

  @override
  String get townCityRequired => 'المدينة/البلدة*';

  @override
  String get postcodeRequired => 'الرمز البريدي*';

  @override
  String get contactNoRequired => 'رقم الاتصال*';

  @override
  String get requiredField => 'مطلوب';

  @override
  String get onlineStore => 'المتجر الإلكتروني';

  @override
  String get confirmDeliveryInfo => 'تأكيد معلومات التوصيل';

  @override
  String get failedToPlaceOrder => 'فشل تقديم الطلب. يرجى المحاولة مرة أخرى.';

  @override
  String get unexpectedErrorOccurred => 'حدث خطأ غير متوقع';

  @override
  String get orderBlockWarning =>
      'سيتم حظرك لمدة 7 أيام قبل تقديم الطلب التالي.';

  @override
  String get orderPlaced => 'تم تقديم الطلب';

  @override
  String get orderConfirmed => 'تم تأكيد طلبك الآن.';

  @override
  String get orderDetails => 'تفاصيل الطلب';

  @override
  String get productNameLabel => 'اسم المنتج:';

  @override
  String get venueNameLabel => 'اسم المكان:';

  @override
  String get orderDateLabel => 'تاريخ الطلب:';

  @override
  String get orderTimeLabel => 'وقت الطلب:';

  @override
  String get orderBlockedSevenDays =>
      'أنت محظور لمدة 7 أيام\nقبل تقديم الطلب التالي.';

  @override
  String get openingTimesText => 'أوقات العمل';

  @override
  String get openingHoursMonday => 'الاثنين';

  @override
  String get openingHoursTuesday => 'الثلاثاء';

  @override
  String get openingHoursWednesday => 'الأربعاء';

  @override
  String get openingHoursThursday => 'الخميس';

  @override
  String get openingHoursFriday => 'الجمعة';

  @override
  String get openingHoursSaturday => 'السبت';

  @override
  String get openingHoursSunday => 'الأحد';

  @override
  String get openingHoursMonShort => 'الاثنين';

  @override
  String get openingHoursTueShort => 'الثلاثاء';

  @override
  String get openingHoursWedShort => 'الأربعاء';

  @override
  String get openingHoursThuShort => 'الخميس';

  @override
  String get openingHoursFriShort => 'الجمعة';

  @override
  String get openingHoursSatShort => 'السبت';

  @override
  String get openingHoursSunShort => 'الأحد';

  @override
  String get openingHoursClosed => 'مغلق';

  @override
  String get openingHoursAnd => 'و';

  @override
  String get openingHoursTo => 'إلى';

  @override
  String get orderHistory => 'سجل الطلبات';

  @override
  String get noOrdersFound => 'لم يتم العثور على طلبات';

  @override
  String get failedToLoadOrderHistory =>
      'تعذر تحميل سجل الطلبات. يرجى المحاولة مرة أخرى.';

  @override
  String get orderStatusLabel => 'الحالة:';

  @override
  String get deliveryAddressLabel => 'عنوان التسليم:';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get something_went_wrong => 'حدث خطأ ما. يرجى المحاولة مرة أخرى.';

  @override
  String get videoPlay => 'تشغيل';

  @override
  String get videoPause => 'إيقاف مؤقت';

  @override
  String get videoMute => 'كتم الصوت';

  @override
  String get videoUnmute => 'إلغاء كتم الصوت';

  @override
  String get videoUnavailable => 'هذا الفيديو غير متاح.';

  @override
  String get videoFullScreen => 'ملء الشاشة';

  @override
  String get videoExitFullScreen => 'إنهاء ملء الشاشة';

  @override
  String get videoSeek => 'موضع الفيديو';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes دقيقة و$seconds ثانية';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$position من $duration';
  }

  @override
  String get payloadTooLarge =>
      'هذا الملف كبير جدًا للإرسال. يرجى اختيار ملف أصغر.';

  @override
  String get tooManyRequests =>
      'محاولات كثيرة جدًا. يرجى الانتظار قليلاً ثم المحاولة مرة أخرى.';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'محاولات كثيرة جدًا. يرجى المحاولة مرة أخرى خلال $seconds ثانية.';
  }

  @override
  String get serverError => 'حدث خطأ لدينا. يرجى المحاولة مرة أخرى قريبًا.';

  @override
  String get serviceUnavailable =>
      'الخدمة غير متاحة مؤقتًا. يرجى المحاولة مرة أخرى قريبًا.';

  @override
  String get backButtonLabel => 'رجوع';

  @override
  String get scanQrCode => 'مسح رمز QR';

  @override
  String get attachedImage => 'الصورة المرفقة';

  @override
  String get chooseDateOfBirth => 'اختر تاريخ الميلاد';
}
