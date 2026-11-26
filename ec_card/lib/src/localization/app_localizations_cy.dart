// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsCy extends AppLocalizations {
  AppLocalizationsCy([String locale = 'cy']) : super(locale);

  @override
  String get appTitle => 'ap_cerdyn_ec';

  @override
  String get login => 'Mewngofnodi';

  @override
  String get mobile_no => 'Rhif Ffôn Symudol';

  @override
  String get enter_mobile_no => 'Rhowch y Rhif Ffôn Symudol';

  @override
  String get new_user => 'Defnyddiwr Newydd?';

  @override
  String get register_now => 'Cofrestrwch Nawr';

  @override
  String get register => 'Cofrestru';

  @override
  String get terms_condition => 'Telerau ac Amodau';

  @override
  String get app_terms_conditions => 'Telerau ac Amodau Apiau';

  @override
  String get accept_close => 'Derbyn a Chau';

  @override
  String get register_no => 'Rhif Cofrestru';

  @override
  String get register_text_one =>
      'Mae angen i ni wirio\'ch rhif ffôn symudol drwy anfon Cyfrinair Untro atoch.';

  @override
  String get register_text_two =>
      'Rhowch eich Rhif Ffôn Symudol heb unrhyw ragddodiaid a gwasgwch y botwm cyflwyno.';

  @override
  String get enable_permission => 'Galluogi Caniatâd';

  @override
  String get allow_permission =>
      'Rhowch ganiatâd â llaw i gwblhau\'r llawdriniaeth.';

  @override
  String get dismiss => 'Diystyru';

  @override
  String get open_settings => 'Agor Gosodiadau';

  @override
  String get unexpectedError => 'Digwyddodd gwall annisgwyl';

  @override
  String get noInternetConnection => 'Dim Cysylltiad Rhyngrwyd';

  @override
  String get notFound => 'Heb ei Ganfod';

  @override
  String get databaseDisconnected =>
      'Bu\'n rhaid rhoi\'r gorau i\'r llawdriniaeth oherwydd datgysylltiad rhwydwaith';

  @override
  String get datatbaseExpiredToken =>
      'Mae\'r tocyn awdurdodi a gyflenwyd wedi dod i ben';

  @override
  String get databaseInvalidToken => 'Mae\'r tocyn dilysu penodedig yn annilys';

  @override
  String get missingPhoneNumber => 'Ni all rhif ffôn symudol fod yn wag';

  @override
  String get invalidPhoneNumber => 'Rhowch rif ffôn symudol dilys';

  @override
  String get invalidVerificationCode => 'OTP annilys';

  @override
  String get missingVerificationCode => 'OTP annilys';

  @override
  String get codeExpired =>
      'Mae\'r OTP wedi dod i ben. Anfonwch eto i geisio eto.';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError => 'Digwyddodd gwall cofrestru anhysbys';

  @override
  String get profileImageUploadError => 'Methu uwchlwytho llun proffil';

  @override
  String get profileImageDeleteError => 'Methu dileu llun proffil';

  @override
  String get clickHereForMoreInfo => 'cliciwch yma am wybodaeth gyswllt';

  @override
  String unknownDatabaseError(String message) {
    return 'Gwall Cronfa Ddata anhysbys: $message';
  }

  @override
  String get continue_to_quiz => 'Parhau i\'r Cwis';

  @override
  String get continue_to_dashboard => 'Parhau i\'r Dangosfwrdd';

  @override
  String get cancel => 'Canslo';

  @override
  String get done => 'Wedi\'i wneud';

  @override
  String get next => 'Nesaf';

  @override
  String get verify => 'Gwirio';

  @override
  String get phone_number => 'Rhif Ffôn';

  @override
  String get phone_verification => 'Dilysu Ffôn';

  @override
  String get otp => 'OTP';

  @override
  String get submit => 'Cyflwyno';

  @override
  String get save_details => 'Cadw Manylion';

  @override
  String get postcode => 'Cod post';

  @override
  String get enter_postcode => 'Rhowch y Cod Post';

  @override
  String get dob => 'Dyddiad Geni';

  @override
  String get dob_placeholder => 'DD /MM /BBBB';

  @override
  String get gender => 'Rhyw';

  @override
  String get male => 'M';

  @override
  String get female => 'F';

  @override
  String get other => 'Arall';

  @override
  String get do_not_disclose => 'Ddim eisiau datgelu';

  @override
  String get access_code => 'Cod Mynediad';

  @override
  String get enter_access_code => 'Rhowch y Cod Mynediad';

  @override
  String get please_enter_access_code => 'Rhowch y Cod Mynediad';

  @override
  String get resend_otp => 'Ail-anfon OTP';

  @override
  String resend_otp_countdown(String time) {
    return 'Ail-anfon OTP mewn $time';
  }

  @override
  String get change_mobile => 'Newid Ffôn Symudol';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'Rydym wedi anfon OTP ar eich Rhif Ffôn Symudol $mobileNumber';
  }

  @override
  String get well_done => 'Da iawn! Cofrestru\'n Llwyddiannus';

  @override
  String get registration_text =>
      'Mae eich cofrestru wedi\'i gwblhau nawr, fodd bynnag, i gael mynediad i\'r ap mae angen i chi gwblhau\'r cwis yn y broses ganlynol. Gallwch wylio fideos addysgol i\'ch helpu i basio\'r cwis. Os ydych chi wedi rhoi cod mynediad, gallwch ddefnyddio\'r cod hwn i osgoi\'r broses cwis.';

  @override
  String get continue_button => 'Parhau';

  @override
  String get watch_text => 'Gwylio';

  @override
  String get quiz_text => 'Cwis';

  @override
  String get finish_text => 'Gorffen';

  @override
  String get congratulations => 'Llongyfarchiadau';

  @override
  String get not_eligible_for_transaction =>
      'Ddim yn Gymwys ar gyfer Trafodiad';

  @override
  String get to_scan_again => 'i Sganio Eto!';

  @override
  String get oh_no => 'O.. na..';

  @override
  String get oops => 'OWPS';

  @override
  String get transaction_successful => 'Trafodiad yn Llwyddiannus!';

  @override
  String get quiz_completion_text_one =>
      'Rydych chi wedi cwblhau\'r cwis yn llwyddiannus ac wedi cael eich derbyn i\'r cynllun eCard. Byddwch nawr yn gallu cael mynediad i\'n rhestr o leoliadau cymeradwy a chasglu eich cyflenwad condomau am ddim. Gwnewch yn siŵr bod yr ap yn gallu cael mynediad at wasanaethau lleoliad a\'ch camera.';

  @override
  String get quiz_completion_text_two =>
      'Pan fyddwch chi\'n ymweld â\'ch lleoliad, rhowch wybod iddyn nhw eich bod chi\'n aelod o gynllun eCard Iechyd Rhywiol ac yr hoffech chi gasglu eich condomau am ddim. Gofynnir i chi sganio cod QR gan ddefnyddio\'r Ap i gymeradwyo\'r trafodiad cyn cael eich cyflenwad o gondomau.';

  @override
  String get quiz_completion_text_three =>
      'Os oes gennych unrhyw broblem, cysylltwch â\'r ganolfan gwybodaeth gwasanaeth.';

  @override
  String get quiz_completion_text_four =>
      'Noder: Cyflenwir condomau mewn nifer penodol, mewn un maint a math. Dim ond un casgliad y gallwch ei wneud mewn unrhyw gyfnod o 7 diwrnod.';

  @override
  String get error_in_playing_video =>
      'Mae gwall wrth chwarae\'r fideo. Rhowch gynnig arall arni!!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'Derbyniwch y telerau ac amodau os gwelwch yn dda.';

  @override
  String get user_not_found => 'Defnyddiwr Heb ei Ganfod';

  @override
  String get user_disabled => 'Defnyddiwr wedi\'i Analluogi';

  @override
  String get missing_phone_number => 'Rhif Ffôn Ar Goll';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'Allgofnodi';

  @override
  String get are_you_sure_logout =>
      'Ydych chi\'n siŵr eich bod chi eisiau allgofnodi?';

  @override
  String get delete_account => 'Dileu Cyfrif';

  @override
  String get support => 'Cymorth';

  @override
  String get ivts => 'IVTS';

  @override
  String get privacy_policy => 'Preifatrwydd a Pholisi';

  @override
  String get accessibility_statement => 'Datganiad Hygyrchedd';

  @override
  String get language => 'Iaith';

  @override
  String get selectLanguage => 'Dewis Iaith';

  @override
  String get venues => 'Lleoliadau';

  @override
  String get education => 'Addysg';

  @override
  String get message => 'Neges';

  @override
  String get account => 'Cyfrif';

  @override
  String get orderCompleted => 'Gorchymyn wedi\'i Gwblhau';

  @override
  String get transactionDetails => 'Manylion Trafodiad';

  @override
  String get close => 'Cau';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return 'Diolch am eich trafodiad diweddar am $date $time GMT. Gallwch wneud eich casgliad nesaf ar ôl';
  }

  @override
  String get countdownDay => 'diwrnod';

  @override
  String get countdownHour => 'awr';

  @override
  String get countdownMin => 'munud';

  @override
  String get countdownSec => 'eiliad';

  @override
  String get welcomeToEcCard => 'Croeso i Ap eCard';

  @override
  String get registrationDisclaimer =>
      'Noder nad yw\'r ap hwn ar gyfer atal cenhedlu brys. Os oes eu hangen arnoch, cysylltwch â\'ch fferyllfa leol neu\'ch gwasanaeth iechyd rhywiol yn uniongyrchol.';

  @override
  String get videos => 'Fideos';

  @override
  String get documents => 'Dogfennau';

  @override
  String get weblinks => 'Dolenni gwe';

  @override
  String get no_weblinks => 'Heb ddod o hyd i ddolenni gwe addysgol';

  @override
  String get weblink_opens_in_browser => 'Yn agor yn y porwr';

  @override
  String sizeLabel(String size) {
    return 'Maint: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count golygfeydd';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'Siopau';

  @override
  String get kiosk => 'Ciosg';

  @override
  String get search => 'Chwilio';

  @override
  String get addressLabel => 'Cyfeiriad:';

  @override
  String get notesLabel => 'Nodiadau:';

  @override
  String get directions => 'Cyfarwyddiadau';

  @override
  String get noKiosksAvailable =>
      'Ar hyn o bryd nid oes unrhyw giosgau ar gael.';

  @override
  String get noNotificationsYet => 'Dim hysbysiadau eto!';

  @override
  String get selectProduct => 'Dewiswch Gynnyrch';

  @override
  String get noActiveProducts =>
      'Ni chanfuwyd unrhyw gynhyrchion gweithredol yn y siop hon.';

  @override
  String get productDescription => 'Disgrifiad Cynnyrch';

  @override
  String get productSelectionWarning =>
      'Gwnewch yn siŵr eich bod yn gwneud y dewis cywir gan mai dim ond un dewis sy\'n cael ei ganiatáu fesul cyfnod archebu.';

  @override
  String get confirmSelection => 'Cadarnhau\'r Dewisiad';

  @override
  String get productDescriptionLabel => 'Disgrifiad Cynnyrch:';

  @override
  String get back => 'Yn ôl';

  @override
  String get confirm => 'Cadarnhau';

  @override
  String get skip => 'Hepgor';

  @override
  String get settings => 'Gosodiadau';

  @override
  String get systemTheme => 'Thema System';

  @override
  String get lightTheme => 'Thema Ysgafn';

  @override
  String get darkTheme => 'Thema Dywyll';

  @override
  String get transactions => 'Trafodion';

  @override
  String get allowUnlimitedTransactions => 'Caniatáu trafodion diderfyn?';

  @override
  String get delete => 'Dileu';

  @override
  String get delete_account_warning =>
      'Unwaith i chi ddileu eich cyfrif, bydd eich holl gofnodion ymweliadau yn cael eu dileu\'n barhaol';

  @override
  String get additional_registration_questions =>
      'Cwestiynau Cofrestru Ychwanegol';

  @override
  String submission_failed(String error) {
    return 'Methodd y cyflwyniad: $error';
  }

  @override
  String get no_questions_available => 'Dim cwestiynau ar gael.';

  @override
  String get select_option => 'Dewis Opsiwn';

  @override
  String get please_select_option => 'Dewiswch opsiwn';

  @override
  String get select_options => 'Dewis Dewisiadau';

  @override
  String get please_select_at_least_one => 'Dewiswch o leiaf un opsiwn';

  @override
  String get ok => 'Iawn';

  @override
  String get contact_information => 'Gwybodaeth Gyswllt';

  @override
  String get send_support_message => 'Anfon Neges Cymorth';

  @override
  String get title_hint => 'Teitl';

  @override
  String get title_cannot_be_empty => 'Ni all y teitl fod yn wag';

  @override
  String get description_hint => 'Disgrifiad';

  @override
  String get description_cannot_be_empty => 'Ni all y disgrifiad fod yn wag';

  @override
  String get email_invalid => 'Rhowch gyfeiriad e-bost dilys';

  @override
  String get email_hint => 'E-bost';

  @override
  String get add_attachment => 'Ychwanegu Atodiad';

  @override
  String get name_label => 'Enw:';

  @override
  String get email_label => 'E-bost:';

  @override
  String get contact_number_label => 'Rhif Cyswllt:';

  @override
  String get enter_otp_delete_account => 'Rhowch OTP i ddileu eich cyfrif';

  @override
  String get delete_confirm_warning =>
      'Ar ôl pwyso cyflwyno, bydd eich holl gofnodion ymweliad yn cael eu dileu\'n barhaol. Ydych chi am barhau?';

  @override
  String get unexpected_error_try_again =>
      'Gwall annisgwyl! Rhowch gynnig arall arni.';

  @override
  String get gallery => 'Oriel';

  @override
  String get field_is_mandatory => 'Mae\'r maes yn orfodol';

  @override
  String get current_location => 'Lleoliad Presennol';

  @override
  String get submitted_successfully => 'Wedi\'i gyflwyno\'n llwyddiannus!';

  @override
  String get failed_to_load_profile => 'Methwyd llwytho data proffil';

  @override
  String get api_exception_not_implemented => 'Eithriad API Heb ei Weithredu';

  @override
  String get api_exception_request_cancelled =>
      'Cais Eithriad API Wedi\'i Ganslo';

  @override
  String get api_exception_internal_server_error =>
      'Gwall Gweinydd Mewnol Eithriad API';

  @override
  String get api_exception_not_found => 'Heb Ddarganfod Eithriad API';

  @override
  String get api_exception_service_unavailable =>
      'Gwasanaeth Eithriad API Heb ei Gael';

  @override
  String get api_exception_method_not_allowed =>
      'Ni Chaniateir Dull Eithriad API';

  @override
  String get api_exception_bad_request => 'Cais Gwael Eithriad API';

  @override
  String get api_exception_unauthorized_request =>
      'Cais Anawdurdodedig Eithriad API';

  @override
  String get api_exception_unexpected_error => 'Gwall Annisgwyl Eithriad API';

  @override
  String get api_exception_request_timeout => 'Terfyn Amser Cais Eithriad API';

  @override
  String get api_exception_no_internet_connection =>
      'Eithriad API Dim Cysylltiad Rhyngrwyd';

  @override
  String get api_exception_send_timeout => 'Amser Terfyn Anfon Eithriad API';

  @override
  String get api_exception_conflict => 'Gwrthdaro Eithriad API';

  @override
  String get api_exception_unable_to_process_request =>
      'Eithriad API yn Methu Prosesu Cais';

  @override
  String get api_exception_unable_to_perform_action =>
      'Eithriad API yn Methu Cyflawni\'r Weithred';

  @override
  String get api_exception_unauthorized_exception =>
      'Eithriad API Eithriad Heb Awdurdodiad';

  @override
  String get api_exception_default_error => 'Gwall Diofyn Eithriad API';

  @override
  String get api_exception_format_exception => 'Eithriad Fformat Eithriad API';

  @override
  String get api_exception_not_acceptable => 'Eithriad API Ddim yn Dderbyniol';

  @override
  String get version_label => 'Fersiwn';

  @override
  String get update_available_title => 'Diweddariad ar gael';

  @override
  String get update_required_title => 'Mae angen diweddaru';

  @override
  String get update_available_message =>
      'Mae fersiwn newydd o\'r ap ar gael. Diweddarwch nawr i gael y nodweddion a\'r atgyweiriadau diweddaraf.';

  @override
  String get update_required_message =>
      'Nid yw\'r fersiwn hon o\'r ap yn cael ei chefnogi mwyach. Diweddarwch i barhau.';

  @override
  String get update_now => 'Diweddaru nawr';

  @override
  String get update_later => 'Nes ymlaen';

  @override
  String get permission_denied => 'Caniatâd wedi\'i Wrthod';

  @override
  String get online => 'Ar-lein';

  @override
  String get noProductsFound => 'Ni chanfuwyd unrhyw gynhyrchion';

  @override
  String get failedToLoadProducts => 'Methwyd llwytho cynhyrchion.';

  @override
  String get readMore => 'Darllen Mwy';

  @override
  String get notEligibleToOrderNow =>
      'Nid ydych chi\'n gymwys i archebu ar hyn o bryd.';

  @override
  String get productDetails => 'Manylion Cynnyrch';

  @override
  String get orderNow => 'Archebwch Nawr';

  @override
  String get provideAddressAndContact =>
      'Rhowch eich Cyfeiriad a\'ch Rhif Cyswllt i Archebu';

  @override
  String get streetRequired => 'Stryd*';

  @override
  String get addressLineTwo => 'Llinell Cyfeiriad Dau';

  @override
  String get townCityRequired => 'Tref/Dinas*';

  @override
  String get postcodeRequired => 'Cod post*';

  @override
  String get contactNoRequired => 'Rhif Cyswllt*';

  @override
  String get requiredField => 'Angenrheidiol';

  @override
  String get onlineStore => 'Siop Ar-lein';

  @override
  String get confirmDeliveryInfo => 'Cadarnhau Gwybodaeth Dosbarthu';

  @override
  String get failedToPlaceOrder =>
      'Methwyd gosod archeb. Rhowch gynnig arall arni.';

  @override
  String get unexpectedErrorOccurred => 'Digwyddodd gwall annisgwyl';

  @override
  String get orderBlockWarning =>
      'Byddwch yn cael eich rhwystro am 7 diwrnod rhag rhoi\'r archeb nesaf.';

  @override
  String get orderPlaced => 'Gorchymyn Wedi\'i Osod';

  @override
  String get orderConfirmed => 'Mae eich Gorchymyn bellach wedi\'i gadarnhau.';

  @override
  String get orderDetails => 'Manylion yr Archeb';

  @override
  String get productNameLabel => 'Enw\'r Cynnyrch:';

  @override
  String get venueNameLabel => 'Enw\'r Lleoliad:';

  @override
  String get orderDateLabel => 'Dyddiad yr Archeb:';

  @override
  String get orderTimeLabel => 'Amser Archebu:';

  @override
  String get orderBlockedSevenDays =>
      'Rydych wedi\'ch rhwystro am 7 diwrnod rhag rhoi\'r archeb nesaf.';

  @override
  String get openingTimesText => 'Oriau agor';

  @override
  String get openingHoursMonday => 'Dydd Llun';

  @override
  String get openingHoursTuesday => 'Dydd Mawrth';

  @override
  String get openingHoursWednesday => 'Dydd Mercher';

  @override
  String get openingHoursThursday => 'Dydd Iau';

  @override
  String get openingHoursFriday => 'Dydd Gwener';

  @override
  String get openingHoursSaturday => 'Dydd Sadwrn';

  @override
  String get openingHoursSunday => 'Dydd Sul';

  @override
  String get openingHoursMonShort => 'Llun';

  @override
  String get openingHoursTueShort => 'Maw';

  @override
  String get openingHoursWedShort => 'Mer';

  @override
  String get openingHoursThuShort => 'Iau';

  @override
  String get openingHoursFriShort => 'Gwener';

  @override
  String get openingHoursSatShort => 'Sad';

  @override
  String get openingHoursSunShort => 'Haul';

  @override
  String get openingHoursClosed => 'ar gau';

  @override
  String get openingHoursAnd => 'a';

  @override
  String get openingHoursTo => 'i';

  @override
  String get orderHistory => 'Hanes Archebion';

  @override
  String get noOrdersFound => 'Ni chanfuwyd unrhyw archebion';

  @override
  String get failedToLoadOrderHistory =>
      'Methwyd llwytho hanes archebion. Rhowch gynnig arall arni.';

  @override
  String get orderStatusLabel => 'Statws:';

  @override
  String get deliveryAddressLabel => 'Cyfeiriad Dosbarthu:';

  @override
  String get retry => 'Ailgeisio';

  @override
  String get something_went_wrong =>
      'Aeth rhywbeth o’i le. Rhowch gynnig arall arni.';

  @override
  String get videoPlay => 'Chwarae';

  @override
  String get videoPause => 'Oedi';

  @override
  String get videoMute => 'Tewi';

  @override
  String get videoUnmute => 'Dad-dewi';

  @override
  String get videoUnavailable => 'Nid yw\'r fideo hwn ar gael.';

  @override
  String get videoFullScreen => 'Sgrin lawn';

  @override
  String get videoExitFullScreen => 'Gadael sgrin lawn';

  @override
  String get videoSeek => 'Safle\'r fideo';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes munud $seconds eiliad';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$position o $duration';
  }

  @override
  String get payloadTooLarge =>
      'Mae\'r ffeil honno\'n rhy fawr i\'w hanfon. Dewiswch un lai.';

  @override
  String get tooManyRequests =>
      'Gormod o ymgeisiadau. Arhoswch am funud a rhowch gynnig arall arni.';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'Gormod o ymgeisiadau. Rhowch gynnig arall arni ymhen $seconds eiliad.';
  }

  @override
  String get serverError =>
      'Aeth rhywbeth o\'i le ein pen ni. Rhowch gynnig arall arni cyn bo hir.';

  @override
  String get serviceUnavailable =>
      'Nid yw\'r gwasanaeth ar gael dros dro. Rhowch gynnig arall arni cyn bo hir.';

  @override
  String get backButtonLabel => 'Nôl';

  @override
  String get scanQrCode => 'Sganio cod QR';

  @override
  String get attachedImage => 'Delwedd atodedig';

  @override
  String get chooseDateOfBirth => 'Dewis dyddiad geni';
}
