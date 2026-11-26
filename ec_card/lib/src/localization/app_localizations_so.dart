// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get appTitle => 'ec_card_app';

  @override
  String get login => 'Soo gal';

  @override
  String get mobile_no => 'Lambarka Moobaylka';

  @override
  String get enter_mobile_no => 'Geli Lambarka Moobaylka.';

  @override
  String get new_user => 'Isticmaale Cusub?';

  @override
  String get register_now => 'Isku diiwaangeli hadda';

  @override
  String get register => 'Diiwaangeli';

  @override
  String get terms_condition => 'Shuruudaha iyo Xaaladda';

  @override
  String get app_terms_conditions => 'Shuruudaha iyo Xaaladaha Barnaamijyada';

  @override
  String get accept_close => 'Aqbal & Xidh';

  @override
  String get register_no => 'Lambarka Diiwaangelinta';

  @override
  String get register_text_one =>
      'Waxaan u baahanahay inaan xaqiijino lambarkaaga moobaylka annagoo kuu soo dirayna eray sir ah oo hal mar ah.';

  @override
  String get register_text_two =>
      'Fadlan geli lambarka taleefankaaga adigoon wax horgale ah lahayn oo riix badhanka gudbinta.';

  @override
  String get enable_permission => 'Daar Ogolaanshaha';

  @override
  String get allow_permission =>
      'Fadlan u oggolow ogolaansho gacanta si aad u dhammaystirto hawlgalka.';

  @override
  String get dismiss => 'Iska dhaaf';

  @override
  String get open_settings => 'Fur Dejinta';

  @override
  String get unexpectedError => 'Khalad lama filaan ah ayaa dhacay';

  @override
  String get noInternetConnection => 'Ma jiro xiriir internet';

  @override
  String get notFound => 'Lama helin';

  @override
  String get databaseDisconnected =>
      'Hawlgalku waa in la joojiyaa sababtoo ah go\'itaan shabakadeed';

  @override
  String get datatbaseExpiredToken =>
      'Calaamadda ogolaanshaha ee la bixiyay way dhacday';

  @override
  String get databaseInvalidToken =>
      'Calaamadda xaqiijinta ee la cayimay waa mid aan sax ahayn';

  @override
  String get missingPhoneNumber => 'Lambarka moobaylku ma madhnaan karo';

  @override
  String get invalidPhoneNumber => 'Fadlan bixi lambar moobayl oo ansax ah';

  @override
  String get invalidVerificationCode => 'OTP aan sax ahayn';

  @override
  String get missingVerificationCode => 'OTP aan sax ahayn';

  @override
  String get codeExpired =>
      'OTP wuu dhacay. Fadlan dib u dir si aad mar kale isugu daydo.';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError =>
      'Khalad diiwaangelin ah oo aan la garanayn ayaa dhacay';

  @override
  String get profileImageUploadError =>
      'Lama soo gelin karo sawirka profile-ka';

  @override
  String get profileImageDeleteError => 'Lama tirtiri karo sawirka profile-ka';

  @override
  String get clickHereForMoreInfo =>
      'halkan guji si aad u hesho macluumaadka xiriirka';

  @override
  String unknownDatabaseError(String message) {
    return 'Khalad aan la garanayn oo ku saabsan xogta: $message';
  }

  @override
  String get continue_to_quiz => 'Sii wad Su\'aalaha Weydiinta';

  @override
  String get continue_to_dashboard => 'Sii wad Dashboard-ka';

  @override
  String get cancel => 'Jooji';

  @override
  String get done => 'La dhammeeyay';

  @override
  String get next => 'Xiga';

  @override
  String get verify => 'Xaqiiji';

  @override
  String get phone_number => 'Lambarka Taleefanka';

  @override
  String get phone_verification => 'Xaqiijinta Telefoonka';

  @override
  String get otp => 'OTP';

  @override
  String get submit => 'Gudbi';

  @override
  String get save_details => 'Keydi Faahfaahinta';

  @override
  String get postcode => 'Koodhka boostada';

  @override
  String get enter_postcode => 'Geli Koodhka Boostada';

  @override
  String get dob => 'Taariikhda Dhalashada';

  @override
  String get dob_placeholder => 'DD / MM / SSSS';

  @override
  String get gender => 'Jinsiga';

  @override
  String get male => 'M';

  @override
  String get female => 'F';

  @override
  String get other => 'Kale';

  @override
  String get do_not_disclose => 'Ma doonayo inaan shaaciyo';

  @override
  String get access_code => 'Koodhka Helitaanka';

  @override
  String get enter_access_code => 'Geli Koodhka Helitaanka';

  @override
  String get please_enter_access_code => 'Fadlan Geli Koodhka Helitaanka';

  @override
  String get resend_otp => 'Dib u dir OTP';

  @override
  String resend_otp_countdown(String time) {
    return 'Dib u dir OTP $time gudahood';
  }

  @override
  String get change_mobile => 'Beddel Moobaylka';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'Waxaan OTP kuugu soo dirnay Lambarkaaga Moobaylka. $mobileNumber';
  }

  @override
  String get well_done => 'Si Wanaagsan! Diiwaangelintu way guuleysatay';

  @override
  String get registration_text =>
      'Si kastaba ha ahaatee, diiwaangelintaadu hadda way dhammaatay si aad u gasho abka waxaad u baahan tahay inaad dhammaystirto su\'aasha habka soo socda. Waxaad daawan kartaa fiidiyowyo waxbarasho si ay kaaga caawiyaan inaad ka gudubto su\'aasha. Haddii aad bixisay koodka gelitaanka, waxaad isticmaali kartaa koodkan si aad uga gudubto habka su\'aalaha.';

  @override
  String get continue_button => 'Sii wad';

  @override
  String get watch_text => 'Daawo';

  @override
  String get quiz_text => 'Su\'aalo-weydiin';

  @override
  String get finish_text => 'Dhammaad';

  @override
  String get congratulations => 'Hambalyo';

  @override
  String get not_eligible_for_transaction => 'Uma Qalmo Macaamil Ganacsi';

  @override
  String get to_scan_again => 'si aad Mar kale u Baadhto!';

  @override
  String get oh_no => 'Oh.. maya..';

  @override
  String get oops => 'OOPS';

  @override
  String get transaction_successful => 'Macaamil ganacsi ayaa lagu guuleystay!';

  @override
  String get quiz_completion_text_one =>
      'Si guul leh ayaad u dhammaystirtay su\'aalaha waxaana laguu aqbalay nidaamka eC-Card. Hadda waxaad awoodi doontaa inaad gasho liiskayaga goobaha la ansixiyay oo aad ka soo qaadato qalabkaaga cinjirka galmada ee bilaashka ah. Fadlan hubi in barnaamijku uu geli karo adeegyada goobta iyo kamaradaada.';

  @override
  String get quiz_completion_text_two =>
      'Markaad booqato goobtaada fadlan u sheeg inaad xubin ka tahay qorshaha eC-Card-ka Caafimaadka Galmada iyo inaad rabto inaad qaadato cinjirkaaga bilaashka ah. Waxaa lagaa codsan doonaa inaad sawirto koodka QR adoo isticmaalaya App-ka si aad u ansixiso macaamilka ka hor inta aan lagu siinin qalabka cinjirkaaga.';

  @override
  String get quiz_completion_text_three =>
      'Haddii aad dhibaato qabto fadlan la xiriir xarunta sirdoonka adeegga.';

  @override
  String get quiz_completion_text_four =>
      'Fadlan ogow: Cinjirka galmada waxaa lagu bixiyaa tiro go\'an, hal cabbir iyo nooc. Waxaad samayn kartaa hal ururin oo keliya muddo 7 maalmood ah gudaheed.';

  @override
  String get error_in_playing_video =>
      'Waxaa jira qalad ku jira ciyaarista fiidiyowga. Fadlan isku day mar kale!!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'Fadlan aqbal shuruudaha iyo xaaladaha.';

  @override
  String get user_not_found => 'Isticmaalaha Lama Helin';

  @override
  String get user_disabled => 'Isticmaaluhu wuu naafo noqday';

  @override
  String get missing_phone_number => 'Lambarka Taleefanka oo maqan';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'Ka bax';

  @override
  String get are_you_sure_logout => 'Ma hubtaa inaad rabto inaad ka baxdo?';

  @override
  String get delete_account => 'Tirtir Akoonka';

  @override
  String get support => 'Taageerada';

  @override
  String get ivts => 'IVTS';

  @override
  String get privacy_policy => 'Asturnaanta & Siyaasadda';

  @override
  String get accessibility_statement => 'Bayaanka Helitaanka';

  @override
  String get language => 'Luqadda';

  @override
  String get selectLanguage => 'Xullo Luqad';

  @override
  String get venues => 'Goobaha';

  @override
  String get education => 'Waxbarashada';

  @override
  String get message => 'Farriin';

  @override
  String get account => 'Akoon';

  @override
  String get orderCompleted => 'Dalabka waa la dhammeeyay';

  @override
  String get transactionDetails => 'Faahfaahinta Macaamil Ganacsi';

  @override
  String get close => 'Xidh';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return 'Waad ku mahadsan tahay macaamilkaagii ugu dambeeyay ee $date $time GMT. Waxaad samayn kartaa soo qaadashadaada xigta ka dib';
  }

  @override
  String get countdownDay => 'maalin';

  @override
  String get countdownHour => 'saacad';

  @override
  String get countdownMin => 'daq';

  @override
  String get countdownSec => 'ilbiriqsi';

  @override
  String get welcomeToEcCard => 'Kusoo dhawoow Abka eC-Card';

  @override
  String get registrationDisclaimer =>
      'Fadlan ogow in app-kani aanu ahayn mid loogu talagalay ka hortagga uurka ee degdegga ah. Haddii aad u baahan tahay kuwan, fadlan si toos ah ula xiriir farmashiyahaaga ama adeegga caafimaadka galmada ee deegaankaaga.';

  @override
  String get videos => 'Fiidiyowyo';

  @override
  String get documents => 'Dukumentiyada';

  @override
  String get weblinks => 'Xiriirrada internetka';

  @override
  String get no_weblinks => 'Lama helin xiriirro waxbarasho';

  @override
  String get weblink_opens_in_browser => 'Wuxuu ka furmayaa browserka';

  @override
  String sizeLabel(String size) {
    return 'Cabbirka: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count aragtiyo';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'Dukaamada';

  @override
  String get kiosk => 'Dukaan yar';

  @override
  String get search => 'Raadi';

  @override
  String get addressLabel => 'Cinwaanka:';

  @override
  String get notesLabel => 'Qoraalo:';

  @override
  String get directions => 'Tilmaamaha';

  @override
  String get noKiosksAvailable =>
      'Hadda ma jiraan wax Kiosks ah oo la heli karo.';

  @override
  String get noNotificationsYet => 'Ma jiraan wax ogeysiis ah weli!';

  @override
  String get selectProduct => 'Xullo Alaab';

  @override
  String get noActiveProducts =>
      'Badeecooyin firfircoon lagama helin dukaankan.';

  @override
  String get productDescription => 'Sharaxaadda Badeecada';

  @override
  String get productSelectionWarning =>
      'Fadlan hubi inaad sameyso doorashada saxda ah maadaama hal doorasho oo keliya la oggol yahay muddo kasta oo la dalbado.';

  @override
  String get confirmSelection => 'Xaqiiji Xulashada';

  @override
  String get productDescriptionLabel => 'Sharaxaadda Badeecada:';

  @override
  String get back => 'Dib u noqo';

  @override
  String get confirm => 'Xaqiiji';

  @override
  String get skip => 'Ka bood';

  @override
  String get settings => 'Dejinta';

  @override
  String get systemTheme => 'Dulucda Nidaamka';

  @override
  String get lightTheme => 'Duluc Fudud';

  @override
  String get darkTheme => 'Dulucda Madow';

  @override
  String get transactions => 'Macaamil ganacsi';

  @override
  String get allowUnlimitedTransactions =>
      'U oggolow macaamil ganacsi oo aan xadidnayn?';

  @override
  String get delete => 'Tirtir';

  @override
  String get delete_account_warning =>
      'Marka aad tirtirto akoonkaaga, dhammaan diiwaangelintaada booqashooyinka si joogto ah ayaa loo tirtiri doonaa';

  @override
  String get additional_registration_questions =>
      'Su\'aalaha diiwaangelinta dheeraadka ah';

  @override
  String submission_failed(String error) {
    return 'Gudbintu waa fashilantay: $error';
  }

  @override
  String get no_questions_available => 'Ma jiraan su\'aalo la heli karo.';

  @override
  String get select_option => 'Dooro ikhtiyaar';

  @override
  String get please_select_option => 'Fadlan dooro ikhtiyaar';

  @override
  String get select_options => 'Dooro ikhtiyaaryo';

  @override
  String get please_select_at_least_one =>
      'Fadlan dooro ugu yaraan hal ikhtiyaar';

  @override
  String get ok => 'OK';

  @override
  String get contact_information => 'Macluumaadka xiriirka';

  @override
  String get send_support_message => 'Dir fariinta taageerada';

  @override
  String get title_hint => 'Cinwaan';

  @override
  String get title_cannot_be_empty => 'Cinwaanku ma noqon karo mid madhan';

  @override
  String get description_hint => 'Sharraxaad';

  @override
  String get description_cannot_be_empty =>
      'Sharraxaaddu ma noqon karto mid madhan';

  @override
  String get email_invalid => 'Fadlan bixi ciwaan iimayl oo ansax ah';

  @override
  String get email_hint => 'Iimaylka';

  @override
  String get add_attachment => 'Ku dar lifaaq';

  @override
  String get name_label => 'Magaca: ';

  @override
  String get email_label => 'Iimaylka: ';

  @override
  String get contact_number_label => 'Lambarka xiriirka: ';

  @override
  String get enter_otp_delete_account =>
      'Geli OTP si aad u tirtirto akoonkaaga';

  @override
  String get delete_confirm_warning =>
      'Ka dib markaad riixdo gudbinta, dhammaan diiwaangelintaada booqashooyinka si joogto ah ayaa loo tirtiri doonaa. Ma rabtaa inaad sii waddo?';

  @override
  String get unexpected_error_try_again =>
      'Khalad aan la filayn! Fadlan isku day mar kale.';

  @override
  String get gallery => 'Galari';

  @override
  String get field_is_mandatory => 'Goobtan waa lagama maarmaan';

  @override
  String get current_location => 'Goobta hadda';

  @override
  String get submitted_successfully => 'Si guul leh ayaa loo gudbiyay!';

  @override
  String get failed_to_load_profile =>
      'Way ku guuldareysatay in la soo raro xogta profile-ka';

  @override
  String get api_exception_not_implemented =>
      'Ka-reebitaanka API-ga Lama Hirgelin';

  @override
  String get api_exception_request_cancelled =>
      'Codsiga Ka-reebista API waa la joojiyay';

  @override
  String get api_exception_internal_server_error =>
      'Qaladka Server-ka Gudaha ee Ka-reebista API';

  @override
  String get api_exception_not_found => 'Ka-reebitaanka API-ga Lama Helin';

  @override
  String get api_exception_service_unavailable =>
      'Adeegga Ka-reebista API-ga lama heli karo';

  @override
  String get api_exception_method_not_allowed =>
      'Habka Ka-reebista API-ga Lama Ogola';

  @override
  String get api_exception_bad_request => 'Codsiga Xun ee Ka-reebista API-ga';

  @override
  String get api_exception_unauthorized_request =>
      'Codsiga Aan La Ogolaan ee Ka-reebista API';

  @override
  String get api_exception_unexpected_error =>
      'Qalad aan la filayn oo ka reeban API-ga';

  @override
  String get api_exception_request_timeout =>
      'Waqtiga Codsiga Ka-reebista API-ga';

  @override
  String get api_exception_no_internet_connection =>
      'Ka reeban API-ga Ma jiro xiriir internet';

  @override
  String get api_exception_send_timeout =>
      'Waqtiga Diritaanka ee ka-reebista API EXCEption';

  @override
  String get api_exception_conflict => 'Iskahorimaadka Ka-reebista API';

  @override
  String get api_exception_unable_to_process_request =>
      'Ka-reebitaanka API-ga Lama Hirgelin Karo Codsiga';

  @override
  String get api_exception_unable_to_perform_action =>
      'Ka-reebitaanka API-ga Ma awoodo inuu Ficil sameeyo';

  @override
  String get api_exception_unauthorized_exception =>
      'Ka-reebitaanka API-ga Ka-reebitaanka Aan La Ogolaan';

  @override
  String get api_exception_default_error =>
      'Qaladka Caadiga ah ee Ka-reebista API-ga';

  @override
  String get api_exception_format_exception =>
      'Ka reebista Qaabka Ka-reebista API';

  @override
  String get api_exception_not_acceptable =>
      'Ka-reebitaanka API-ga Lama Aqbali Karo';

  @override
  String get version_label => 'Nooca';

  @override
  String get update_available_title => 'Cusboonaysiin ayaa diyaar ah';

  @override
  String get update_required_title => 'Cusboonaysiin ayaa loo baahan yahay';

  @override
  String get update_available_message =>
      'Nooc cusub oo abka ah ayaa diyaar ah. Hadda cusboonaysii si aad u hesho astaamaha iyo hagaajinta ugu dambeeyay.';

  @override
  String get update_required_message =>
      'Noocan abka ah hadda lama taageero. Fadlan cusboonaysii si aad u sii wadato.';

  @override
  String get update_now => 'Hadda cusboonaysii';

  @override
  String get update_later => 'Mar dambe';

  @override
  String get permission_denied => 'Ogolaanshaha waa la diiday';

  @override
  String get online => 'Onlayn';

  @override
  String get noProductsFound => 'Wax alaab ah lama helin';

  @override
  String get failedToLoadProducts => 'Alaabta lama soo dejin.';

  @override
  String get readMore => 'Akhri wax dheeraad ah';

  @override
  String get notEligibleToOrderNow => 'Hadda uma qalantid inaad dalbato.';

  @override
  String get productDetails => 'Faahfaahinta alaabta';

  @override
  String get orderNow => 'Dalbo hadda';

  @override
  String get provideAddressAndContact =>
      'Fadlan bixi cinwaankaaga\niyo lambarka xiriirka si aad u dalbato';

  @override
  String get streetRequired => 'Waddo*';

  @override
  String get addressLineTwo => 'Khadka labaad ee cinwaanka';

  @override
  String get townCityRequired => 'Magaalo*';

  @override
  String get postcodeRequired => 'Koodhka boostada*';

  @override
  String get contactNoRequired => 'Lambarka xiriirka*';

  @override
  String get requiredField => 'Waa qasab';

  @override
  String get onlineStore => 'Dukaan onlayn ah';

  @override
  String get confirmDeliveryInfo => 'Xaqiiji macluumaadka keenista';

  @override
  String get failedToPlaceOrder =>
      'Dalabka lama gudbin. Fadlan mar kale isku day.';

  @override
  String get unexpectedErrorOccurred => 'Khalad lama filaan ah ayaa dhacay';

  @override
  String get orderBlockWarning =>
      'Waxaa lagaa xannibi doonaa 7 maalmood ka hor dalabka xiga.';

  @override
  String get orderPlaced => 'Dalab waa la gudbiyay';

  @override
  String get orderConfirmed => 'Dalabkaaga hadda waa la xaqiijiyay.';

  @override
  String get orderDetails => 'Faahfaahinta dalabka';

  @override
  String get productNameLabel => 'Magaca alaabta:';

  @override
  String get venueNameLabel => 'Magaca goobta:';

  @override
  String get orderDateLabel => 'Taariikhda dalabka:';

  @override
  String get orderTimeLabel => 'Waqtiga dalabka:';

  @override
  String get orderBlockedSevenDays =>
      'Waxaa lagaa xannibay 7 maalmood\nka hor dalabka xiga.';

  @override
  String get openingTimesText => 'Waqtiyada furitaanka';

  @override
  String get openingHoursMonday => 'Isniin';

  @override
  String get openingHoursTuesday => 'Talaado';

  @override
  String get openingHoursWednesday => 'Arbaco';

  @override
  String get openingHoursThursday => 'Khamiis';

  @override
  String get openingHoursFriday => 'Jimce';

  @override
  String get openingHoursSaturday => 'Sabti';

  @override
  String get openingHoursSunday => 'Axad';

  @override
  String get openingHoursMonShort => 'Isn';

  @override
  String get openingHoursTueShort => 'Tal';

  @override
  String get openingHoursWedShort => 'Arb';

  @override
  String get openingHoursThuShort => 'Kha';

  @override
  String get openingHoursFriShort => 'Jim';

  @override
  String get openingHoursSatShort => 'Sab';

  @override
  String get openingHoursSunShort => 'Axa';

  @override
  String get openingHoursClosed => 'xiran';

  @override
  String get openingHoursAnd => 'iyo';

  @override
  String get openingHoursTo => 'ilaa';

  @override
  String get orderHistory => 'Taariikhda dalabaadka';

  @override
  String get noOrdersFound => 'Wax dalab ah lama helin';

  @override
  String get failedToLoadOrderHistory =>
      'Taariikhda dalabaadka lama soo dejin. Fadlan isku day mar kale.';

  @override
  String get orderStatusLabel => 'Xaaladda:';

  @override
  String get deliveryAddressLabel => 'Cinwaanka geynta:';

  @override
  String get retry => 'Isku day mar kale';

  @override
  String get something_went_wrong =>
      'Wax baa qaldamay. Fadlan isku day mar kale.';

  @override
  String get videoPlay => 'Ciyaar';

  @override
  String get videoPause => 'Hakad';

  @override
  String get videoMute => 'Aamus';

  @override
  String get videoUnmute => 'Codka shid';

  @override
  String get videoUnavailable => 'Fiidiyowgan lama heli karo.';

  @override
  String get videoFullScreen => 'Shaashad buuxda';

  @override
  String get videoExitFullScreen => 'Ka bax shaashadda buuxda';

  @override
  String get videoSeek => 'Meesha fiidiyowga';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes daqiiqo $seconds ilbiriqsi';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$position ka mid ah $duration';
  }

  @override
  String get payloadTooLarge =>
      'Faylkaas aad buu u weyn yahay in la diro. Fadlan dooro mid ka yar.';

  @override
  String get tooManyRequests =>
      'Isku dayo aad u badan. Fadlan sug in yar oo isku day mar kale.';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'Isku dayo aad u badan. Fadlan isku day mar kale $seconds ilbiriqsi gudahood.';
  }

  @override
  String get serverError =>
      'Wax baa ka qaldamay dhinacayaga. Fadlan isku day mar kale dhawaan.';

  @override
  String get serviceUnavailable =>
      'Adeeggu si ku meel gaar ah ma diyaar aha. Fadlan isku day mar kale dhawaan.';

  @override
  String get backButtonLabel => 'Dib u noqo';

  @override
  String get scanQrCode => 'Baadh koodka QR';

  @override
  String get attachedImage => 'Sawir ku lifaaqan';

  @override
  String get chooseDateOfBirth => 'Dooro taariikhda dhalashada';
}
