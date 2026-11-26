// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'ઇસી_કાર્ડ_એપ';

  @override
  String get login => 'લૉગ ઇન કરો';

  @override
  String get mobile_no => 'મોબાઇલ નંબર';

  @override
  String get enter_mobile_no => 'મોબાઇલ નંબર દાખલ કરો.';

  @override
  String get new_user => 'નવો યુઝર?';

  @override
  String get register_now => 'અત્યારે નોંધાવો';

  @override
  String get register => 'નોંધણી કરો';

  @override
  String get terms_condition => 'નિયમો અને શરતો';

  @override
  String get app_terms_conditions => 'એપ્લિકેશન્સ શરતો અને નિયમો';

  @override
  String get accept_close => 'સ્વીકારો અને બંધ કરો';

  @override
  String get register_no => 'નોંધણી નંબર';

  @override
  String get register_text_one =>
      'અમારે તમને વન ટાઈમ પાસવર્ડ મોકલીને તમારા મોબાઈલ નંબરની ચકાસણી કરવાની જરૂર છે.';

  @override
  String get register_text_two =>
      'કૃપા કરીને કોઈપણ ઉપસર્ગ વગર તમારો મોબાઈલ નંબર દાખલ કરો અને સબમિટ બટન દબાવો.';

  @override
  String get enable_permission => 'પરવાનગી સક્ષમ કરો';

  @override
  String get allow_permission =>
      'કૃપા કરીને કામગીરી પૂર્ણ કરવા માટે મેન્યુઅલી પરવાનગી આપો.';

  @override
  String get dismiss => 'કાઢી નાખો';

  @override
  String get open_settings => 'સેટિંગ્સ ખોલો';

  @override
  String get unexpectedError => 'એક અણધારી ભૂલ આવી.';

  @override
  String get noInternetConnection => 'ઇન્ટરનેટ કનેક્શન નથી';

  @override
  String get notFound => 'મળ્યું નથી';

  @override
  String get databaseDisconnected =>
      'નેટવર્ક ડિસ્કનેક્ટ થવાને કારણે ઓપરેશન રદ કરવું પડ્યું.';

  @override
  String get datatbaseExpiredToken =>
      'પૂરા પાડવામાં આવેલ પ્રમાણીકરણ ટોકન સમાપ્ત થઈ ગયું છે.';

  @override
  String get databaseInvalidToken => 'ઉલ્લેખિત પ્રમાણીકરણ ટોકન અમાન્ય છે.';

  @override
  String get missingPhoneNumber => 'મોબાઇલ નંબર ખાલી ન હોઈ શકે';

  @override
  String get invalidPhoneNumber => 'કૃપા કરીને માન્ય મોબાઇલ નંબર આપો.';

  @override
  String get invalidVerificationCode => 'અમાન્ય OTP';

  @override
  String get missingVerificationCode => 'અમાન્ય OTP';

  @override
  String get codeExpired =>
      'OTP સમાપ્ત થઈ ગયો છે. ફરી પ્રયાસ કરવા માટે કૃપા કરીને ફરીથી મોકલો.';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError => 'એક અજાણી નોંધણી ભૂલ આવી.';

  @override
  String get profileImageUploadError => 'પ્રોફાઇલ ચિત્ર અપલોડ કરી શકાતું નથી';

  @override
  String get profileImageDeleteError => 'પ્રોફાઇલ ચિત્ર કાઢી શકાતું નથી';

  @override
  String get clickHereForMoreInfo => 'સંપર્ક માહિતી માટે અહીં ક્લિક કરો.';

  @override
  String unknownDatabaseError(String message) {
    return 'એક અજાણી ડેટાબેઝ ભૂલ: $message';
  }

  @override
  String get continue_to_quiz => 'ક્વિઝ પર ચાલુ રાખો';

  @override
  String get continue_to_dashboard => 'ડેશબોર્ડ પર ચાલુ રાખો';

  @override
  String get cancel => 'રદ કરો';

  @override
  String get done => 'થઈ ગયું';

  @override
  String get next => 'આગળ';

  @override
  String get verify => 'ચકાસો';

  @override
  String get phone_number => 'ફોન નંબર';

  @override
  String get phone_verification => 'ફોન ચકાસણી';

  @override
  String get otp => 'ઓટીપી';

  @override
  String get submit => 'સબમિટ કરો';

  @override
  String get save_details => 'વિગતો સાચવો';

  @override
  String get postcode => 'પોસ્ટકોડ';

  @override
  String get enter_postcode => 'પોસ્ટકોડ દાખલ કરો';

  @override
  String get dob => 'જન્મ તારીખ';

  @override
  String get dob_placeholder => 'તારીખ / મહિનો / વર્ષ';

  @override
  String get gender => 'લિંગ';

  @override
  String get male => 'મ';

  @override
  String get female => 'ફ';

  @override
  String get other => 'અન્ય';

  @override
  String get do_not_disclose => 'જાહેર કરવા માંગતા નથી';

  @override
  String get access_code => 'એક્સેસ કોડ';

  @override
  String get enter_access_code => 'ઍક્સેસ કોડ દાખલ કરો';

  @override
  String get please_enter_access_code => 'કૃપા કરીને ઍક્સેસ કોડ દાખલ કરો';

  @override
  String get resend_otp => 'OTP ફરીથી મોકલો';

  @override
  String resend_otp_countdown(String time) {
    return '$time માં OTP ફરીથી મોકલો';
  }

  @override
  String get change_mobile => 'મોબાઇલ બદલો';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'અમે તમારા મોબાઇલ નંબર $mobileNumber પર OTP મોકલ્યો છે.';
  }

  @override
  String get well_done => 'શાબાશ! નોંધણી સફળ થઈ.';

  @override
  String get registration_text =>
      'તમારી નોંધણી હવે પૂર્ણ થઈ ગઈ છે, જોકે, એપ્લિકેશનને ઍક્સેસ કરવા માટે તમારે નીચેની પ્રક્રિયામાં ક્વિઝ પૂર્ણ કરવાની જરૂર છે. તમે ક્વિઝ પાસ કરવામાં મદદ કરવા માટે શૈક્ષણિક વિડિઓઝ જોઈ શકો છો. જો તમે એક્સેસ કોડ આપ્યો હોય, તો તમે ક્વિઝ પ્રક્રિયાને બાયપાસ કરવા માટે આ કોડનો ઉપયોગ કરી શકો છો.';

  @override
  String get continue_button => 'ચાલુ રાખો';

  @override
  String get watch_text => 'વોચ';

  @override
  String get quiz_text => 'ક્વિઝ';

  @override
  String get finish_text => 'સમાપ્ત';

  @override
  String get congratulations => 'અભિનંદન';

  @override
  String get not_eligible_for_transaction => 'વ્યવહાર માટે પાત્ર નથી';

  @override
  String get to_scan_again => 'ફરીથી સ્કેન કરવા માટે!';

  @override
  String get oh_no => 'ઓહ.. ના..';

  @override
  String get oops => 'અરેરે';

  @override
  String get transaction_successful => 'વ્યવહાર સફળ થયો!';

  @override
  String get quiz_completion_text_one =>
      'તમે સફળતાપૂર્વક ક્વિઝ પૂર્ણ કરી છે અને eC-કાર્ડ યોજનામાં સ્વીકારવામાં આવ્યા છો. હવે તમે અમારી મંજૂર સ્થળોની સૂચિને ઍક્સેસ કરી શકશો અને તમારો મફત કોન્ડોમ પુરવઠો એકત્રિત કરી શકશો. કૃપા કરીને ખાતરી કરો કે એપ્લિકેશન સ્થાન સેવાઓ અને તમારા કેમેરાને ઍક્સેસ કરી શકે છે.';

  @override
  String get quiz_completion_text_two =>
      'જ્યારે તમે તમારા સ્થળની મુલાકાત લો ત્યારે કૃપા કરીને તેમને જણાવો કે તમે સેક્સ્યુઅલ હેલ્થ ઇસી-કાર્ડ યોજનાના સભ્ય છો અને તમે તમારા મફત કોન્ડોમ મેળવવા માંગો છો. કોન્ડોમ સપ્લાય આપવામાં આવે તે પહેલાં વ્યવહારને મંજૂરી આપવા માટે તમને એપ્લિકેશનનો ઉપયોગ કરીને QR કોડ સ્કેન કરવાનું કહેવામાં આવશે.';

  @override
  String get quiz_completion_text_three =>
      'જો તમને કોઈ સમસ્યા હોય તો કૃપા કરીને સર્વિસ ઇન્ટેલિજન્સ સેન્ટરનો સંપર્ક કરો.';

  @override
  String get quiz_completion_text_four =>
      'કૃપા કરીને નોંધ લો: કોન્ડોમ એક નિશ્ચિત માત્રામાં, એક કદ અને પ્રકારમાં પૂરા પાડવામાં આવે છે. તમે કોઈપણ 7 દિવસના સમયગાળામાં ફક્ત એક જ સંગ્રહ કરી શકો છો.';

  @override
  String get error_in_playing_video =>
      'વિડિઓ ચલાવવામાં ભૂલ આવી છે. કૃપા કરીને ફરી પ્રયાસ કરો!!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'કૃપા કરીને નિયમો અને શરતો સ્વીકારો.';

  @override
  String get user_not_found => 'વપરાશકર્તા મળ્યો નથી';

  @override
  String get user_disabled => 'વપરાશકર્તા અક્ષમ કરેલ છે';

  @override
  String get missing_phone_number => 'ફોન નંબર ખૂટે છે';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'લોગઆઉટ';

  @override
  String get are_you_sure_logout => 'શું તમે ખરેખર લોગઆઉટ કરવા માંગો છો?';

  @override
  String get delete_account => 'એકાઉન્ટ કાઢી નાખો';

  @override
  String get support => 'સપોર્ટ';

  @override
  String get ivts => 'આઈવીટીએસ';

  @override
  String get privacy_policy => 'ગોપનીયતા અને નીતિ';

  @override
  String get accessibility_statement => 'ઍક્સેસિબિલિટી નિવેદન';

  @override
  String get language => 'ભાષા';

  @override
  String get selectLanguage => 'ભાષા પસંદ કરો';

  @override
  String get venues => 'સ્થળો';

  @override
  String get education => 'શિક્ષણ';

  @override
  String get message => 'સંદેશ';

  @override
  String get account => 'ખાતું';

  @override
  String get orderCompleted => 'ઓર્ડર પૂર્ણ થયો';

  @override
  String get transactionDetails => 'વ્યવહાર વિગતો';

  @override
  String get close => 'બંધ કરો';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return '$date $time GMT વાગ્યે તમારા તાજેતરના વ્યવહાર બદલ આભાર. તમે તમારું આગલું પિક-અપ આ પછી કરી શકો છો';
  }

  @override
  String get countdownDay => 'દિવસ';

  @override
  String get countdownHour => 'કલાક';

  @override
  String get countdownMin => 'મિનિટ';

  @override
  String get countdownSec => 'સેકન્ડ';

  @override
  String get welcomeToEcCard => 'eC-કાર્ડ એપમાં આપનું સ્વાગત છે.';

  @override
  String get registrationDisclaimer =>
      'કૃપા કરીને નોંધ લો કે આ એપ્લિકેશન કટોકટી ગર્ભનિરોધક માટે નથી. જો તમને આની જરૂર હોય, તો કૃપા કરીને તમારી સ્થાનિક ફાર્મસી અથવા જાતીય સ્વાસ્થ્ય સેવાનો સીધો સંપર્ક કરો.';

  @override
  String get videos => 'વિડિયોઝ';

  @override
  String get documents => 'દસ્તાવેજો';

  @override
  String get weblinks => 'વેબલિંક';

  @override
  String get no_weblinks => 'કોઈ શૈક્ષણિક વેબલિંક મળી નથી';

  @override
  String get weblink_opens_in_browser => 'બ્રાઉઝરમાં ખૂલે છે';

  @override
  String sizeLabel(String size) {
    return 'કદ: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count વાર જોવાયા';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'સ્ટોર્સ';

  @override
  String get kiosk => 'કિઓસ્ક';

  @override
  String get search => 'શોધો';

  @override
  String get addressLabel => 'સરનામું::';

  @override
  String get notesLabel => 'નોંધો:';

  @override
  String get directions => 'દિશાઓ';

  @override
  String get noKiosksAvailable => 'હાલમાં કોઈ કિઓસ્ક ઉપલબ્ધ નથી.';

  @override
  String get noNotificationsYet => 'હજુ સુધી કોઈ સૂચનાઓ નથી!';

  @override
  String get selectProduct => 'ઉત્પાદન પસંદ કરો';

  @override
  String get noActiveProducts => 'આ સ્ટોરમાં કોઈ સક્રિય ઉત્પાદનો મળ્યા નથી.';

  @override
  String get productDescription => 'ઉત્પાદન વર્ણન';

  @override
  String get productSelectionWarning =>
      'કૃપા કરીને ખાતરી કરો કે તમે યોગ્ય પસંદગી કરો છો કારણ કે ઓર્ડર સમયગાળા દીઠ ફક્ત એક જ પસંદગીની મંજૂરી છે.';

  @override
  String get confirmSelection => 'પસંદગીની પુષ્ટિ કરો';

  @override
  String get productDescriptionLabel => 'ઉત્પાદન વર્ણન:';

  @override
  String get back => 'પાછળ';

  @override
  String get confirm => 'પુષ્ટિ કરો';

  @override
  String get skip => 'છોડી દો';

  @override
  String get settings => 'સેટિંગ્સ';

  @override
  String get systemTheme => 'સિસ્ટમ થીમ';

  @override
  String get lightTheme => 'લાઇટ થીમ';

  @override
  String get darkTheme => 'ડાર્ક થીમ';

  @override
  String get transactions => 'વ્યવહારો';

  @override
  String get allowUnlimitedTransactions => 'અમર્યાદિત વ્યવહારોને મંજૂરી આપીએ?';

  @override
  String get delete => 'કાઢી નાખો';

  @override
  String get delete_account_warning =>
      'એકવાર તમે તમારું ખાતું કાઢી નાખો, તમારા બધા મુલાકાતના રેકોર્ડ કાયમ માટે કાઢી નાખવામાં આવશે';

  @override
  String get additional_registration_questions => 'વધારાના નોંધણી પ્રશ્નો';

  @override
  String submission_failed(String error) {
    return 'સબમિશન નિષ્ફળ: $error';
  }

  @override
  String get no_questions_available => 'કોઈ પ્રશ્નો ઉપલબ્ધ નથી.';

  @override
  String get select_option => 'વિકલ્પ પસંદ કરો';

  @override
  String get please_select_option => 'કૃપા કરીને એક વિકલ્પ પસંદ કરો';

  @override
  String get select_options => 'વિકલ્પો પસંદ કરો';

  @override
  String get please_select_at_least_one =>
      'કૃપા કરીને ઓછામાં ઓછો એક વિકલ્પ પસંદ કરો';

  @override
  String get ok => 'બરાબર';

  @override
  String get contact_information => 'સંપર્ક માહિતી';

  @override
  String get send_support_message => 'સહાય સંદેશ મોકલો';

  @override
  String get title_hint => 'શીર્ષક';

  @override
  String get title_cannot_be_empty => 'શીર્ષક ખાલી ન હોઈ શકે';

  @override
  String get description_hint => 'વર્ણન';

  @override
  String get description_cannot_be_empty => 'વર્ણન ખાલી ન હોઈ શકે';

  @override
  String get email_invalid => 'કૃપા કરીને માન્ય ઈમેલ સરનામું આપો.';

  @override
  String get email_hint => 'ઈ-મેલ';

  @override
  String get add_attachment => 'જોડાણ ઉમેરો';

  @override
  String get name_label => 'નામ: ';

  @override
  String get email_label => 'ઈમેલ: ';

  @override
  String get contact_number_label => 'સંપર્ક નંબર: ';

  @override
  String get enter_otp_delete_account => 'તમારું ખાતું કાઢી નાખવા OTP દાખલ કરો';

  @override
  String get delete_confirm_warning =>
      'સબમિટ દબાવ્યા પછી, તમારા બધા મુલાકાતના રેકોર્ડ કાયમ માટે કાઢી નાખવામાં આવશે. શું તમે ચાલુ રાખવા માંગો છો?';

  @override
  String get unexpected_error_try_again =>
      'અનપેક્ષિત ભૂલ! કૃપા કરીને ફરીથી પ્રયાસ કરો.';

  @override
  String get gallery => 'ગેલેરી';

  @override
  String get field_is_mandatory => 'આ ક્ષેત્ર ફરજિયાત છે';

  @override
  String get current_location => 'વર્તમાન સ્થાન';

  @override
  String get submitted_successfully => 'સફળતાપૂર્વક સબમિટ થયું!';

  @override
  String get failed_to_load_profile => 'પ્રોફાઇલ ડેટા લોડ કરવામાં નિષ્ફળ';

  @override
  String get api_exception_not_implemented => 'API અપવાદ અમલમાં મૂકાયેલ નથી';

  @override
  String get api_exception_request_cancelled =>
      'API અપવાદ વિનંતી રદ કરવામાં આવી';

  @override
  String get api_exception_internal_server_error =>
      'API અપવાદ આંતરિક સર્વર ભૂલ';

  @override
  String get api_exception_not_found => 'API અપવાદ મળ્યો નથી';

  @override
  String get api_exception_service_unavailable => 'API અપવાદ સેવા ઉપલબ્ધ નથી';

  @override
  String get api_exception_method_not_allowed => 'API અપવાદ પદ્ધતિ માન્ય નથી';

  @override
  String get api_exception_bad_request => 'API અપવાદ ખરાબ વિનંતી';

  @override
  String get api_exception_unauthorized_request => 'API અપવાદ અનધિકૃત વિનંતી';

  @override
  String get api_exception_unexpected_error => 'API અપવાદ અનપેક્ષિત ભૂલ';

  @override
  String get api_exception_request_timeout => 'API અપવાદ વિનંતી સમયસમાપ્તિ';

  @override
  String get api_exception_no_internet_connection =>
      'API અપવાદ ઇન્ટરનેટ કનેક્શન નથી';

  @override
  String get api_exception_send_timeout => 'API એક્સેપ્શન મોકલવાનો સમય સમાપ્ત';

  @override
  String get api_exception_conflict => 'API અપવાદ વિરોધાભાસ';

  @override
  String get api_exception_unable_to_process_request =>
      'API અપવાદ વિનંતી પર પ્રક્રિયા કરવામાં અસમર્થ';

  @override
  String get api_exception_unable_to_perform_action =>
      'API અપવાદ ક્રિયા કરવામાં અસમર્થ';

  @override
  String get api_exception_unauthorized_exception => 'API અપવાદ અનધિકૃત અપવાદ';

  @override
  String get api_exception_default_error => 'API અપવાદ ડિફોલ્ટ ભૂલ';

  @override
  String get api_exception_format_exception => 'API અપવાદ ફોર્મેટ અપવાદ';

  @override
  String get api_exception_not_acceptable => 'API અપવાદ સ્વીકાર્ય નથી';

  @override
  String get version_label => 'આવૃત્તિ';

  @override
  String get update_available_title => 'અપડેટ ઉપલબ્ધ છે';

  @override
  String get update_required_title => 'અપડેટ જરૂરી છે';

  @override
  String get update_available_message =>
      'ઍપનું નવું સંસ્કરણ ઉપલબ્ધ છે. નવીનતમ સુવિધાઓ અને સુધારા મેળવવા માટે હમણાં જ અપડેટ કરો.';

  @override
  String get update_required_message =>
      'ઍપનું આ સંસ્કરણ હવે સમર્થિત નથી. ચાલુ રાખવા માટે કૃપા કરીને અપડેટ કરો.';

  @override
  String get update_now => 'હમણાં અપડેટ કરો';

  @override
  String get update_later => 'પછીથી';

  @override
  String get permission_denied => 'પરવાનગી નકારી';

  @override
  String get online => 'ઑનલાઇન';

  @override
  String get noProductsFound => 'કોઈ ઉત્પાદનો મળ્યા નથી';

  @override
  String get failedToLoadProducts => 'ઉત્પાદનો લોડ કરવામાં નિષ્ફળ.';

  @override
  String get readMore => 'વધુ વાંચો';

  @override
  String get notEligibleToOrderNow => 'તમે અત્યારે ઓર્ડર કરવા માટે પાત્ર નથી.';

  @override
  String get productDetails => 'ઉત્પાદન વિગતો';

  @override
  String get orderNow => 'હમણાં ઓર્ડર કરો';

  @override
  String get provideAddressAndContact =>
      'ઓર્ડર માટે તમારું સરનામું\nઅને સંપર્ક નંબર આપો';

  @override
  String get streetRequired => 'શેરી*';

  @override
  String get addressLineTwo => 'સરનામાની બીજી લાઇન';

  @override
  String get townCityRequired => 'નગર/શહેર*';

  @override
  String get postcodeRequired => 'પોસ્ટકોડ*';

  @override
  String get contactNoRequired => 'સંપર્ક નંબર*';

  @override
  String get requiredField => 'જરૂરી';

  @override
  String get onlineStore => 'ઑનલાઇન સ્ટોર';

  @override
  String get confirmDeliveryInfo => 'ડિલિવરી માહિતીની પુષ્ટિ કરો';

  @override
  String get failedToPlaceOrder =>
      'ઓર્ડર મૂકવામાં નિષ્ફળ. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get unexpectedErrorOccurred => 'અણધારી ભૂલ આવી';

  @override
  String get orderBlockWarning =>
      'આગલો ઓર્ડર કરવા માટે તમને 7 દિવસ માટે બ્લોક કરવામાં આવશે.';

  @override
  String get orderPlaced => 'ઓર્ડર મૂકાયો';

  @override
  String get orderConfirmed => 'તમારો ઓર્ડર હવે પુષ્ટિ થયો છે.';

  @override
  String get orderDetails => 'ઓર્ડર વિગતો';

  @override
  String get productNameLabel => 'ઉત્પાદનનું નામ:';

  @override
  String get venueNameLabel => 'સ્થળનું નામ:';

  @override
  String get orderDateLabel => 'ઓર્ડર તારીખ:';

  @override
  String get orderTimeLabel => 'ઓર્ડર સમય:';

  @override
  String get orderBlockedSevenDays =>
      'આગલો ઓર્ડર કરવા માટે\nતમને 7 દિવસ માટે બ્લોક કરવામાં આવ્યા છે.';

  @override
  String get openingTimesText => 'ખુલવાનો સમય';

  @override
  String get openingHoursMonday => 'સોમવાર';

  @override
  String get openingHoursTuesday => 'મંગળવાર';

  @override
  String get openingHoursWednesday => 'બુધવાર';

  @override
  String get openingHoursThursday => 'ગુરુવાર';

  @override
  String get openingHoursFriday => 'શુક્રવાર';

  @override
  String get openingHoursSaturday => 'શનિવાર';

  @override
  String get openingHoursSunday => 'રવિવાર';

  @override
  String get openingHoursMonShort => 'સોમ';

  @override
  String get openingHoursTueShort => 'મંગળ';

  @override
  String get openingHoursWedShort => 'બુધ';

  @override
  String get openingHoursThuShort => 'ગુરુ';

  @override
  String get openingHoursFriShort => 'શુક્ર';

  @override
  String get openingHoursSatShort => 'શનિ';

  @override
  String get openingHoursSunShort => 'રવિ';

  @override
  String get openingHoursClosed => 'બંધ';

  @override
  String get openingHoursAnd => 'અને';

  @override
  String get openingHoursTo => 'થી';

  @override
  String get orderHistory => 'ઓર્ડર ઇતિહાસ';

  @override
  String get noOrdersFound => 'કોઈ ઓર્ડર મળ્યા નથી';

  @override
  String get failedToLoadOrderHistory =>
      'ઓર્ડર ઇતિહાસ લોડ કરવામાં નિષ્ફળ. કૃપા કરીને ફરી પ્રયત્ન કરો.';

  @override
  String get orderStatusLabel => 'સ્થિતિ:';

  @override
  String get deliveryAddressLabel => 'ડિલિવરી સરનામું:';

  @override
  String get retry => 'ફરી પ્રયાસ કરો';

  @override
  String get something_went_wrong =>
      'કંઈક ખોટું થયું. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get videoPlay => 'ચલાવો';

  @override
  String get videoPause => 'થોભાવો';

  @override
  String get videoMute => 'અવાજ બંધ';

  @override
  String get videoUnmute => 'અવાજ ચાલુ';

  @override
  String get videoUnavailable => 'આ વિડિઓ ઉપલબ્ધ નથી.';

  @override
  String get videoFullScreen => 'પૂર્ણ સ્ક્રીન';

  @override
  String get videoExitFullScreen => 'પૂર્ણ સ્ક્રીનમાંથી બહાર નીકળો';

  @override
  String get videoSeek => 'વિડિયોની સ્થિતિ';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes મિનિટ $seconds સેકન્ડ';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$duration માંથી $position';
  }

  @override
  String get payloadTooLarge =>
      'આ ફાઇલ મોકલવા માટે ઘણી મોટી છે. કૃપા કરીને નાની ફાઇલ પસંદ કરો.';

  @override
  String get tooManyRequests =>
      'ઘણા બધા પ્રયાસો. કૃપા કરીને થોડી વાર રાહ જોઈને ફરી પ્રયાસ કરો.';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'ઘણા બધા પ્રયાસો. કૃપા કરીને $seconds સેકન્ડમાં ફરી પ્રયાસ કરો.';
  }

  @override
  String get serverError =>
      'અમારા તરફથી કંઈક ખોટું થયું. કૃપા કરીને થોડી વારમાં ફરી પ્રયાસ કરો.';

  @override
  String get serviceUnavailable =>
      'સેવા હાલમાં અનુપલબ્ધ છે. કૃપા કરીને થોડી વારમાં ફરી પ્રયાસ કરો.';

  @override
  String get backButtonLabel => 'પાછળ';

  @override
  String get scanQrCode => 'QR કોડ સ્કેન કરો';

  @override
  String get attachedImage => 'જોડેલી છબી';

  @override
  String get chooseDateOfBirth => 'જન્મ તારીખ પસંદ કરો';
}
