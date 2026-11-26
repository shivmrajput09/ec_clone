// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Scottish Gaelic Gaelic (`gd`).
class AppLocalizationsGd extends AppLocalizations {
  AppLocalizationsGd([String locale = 'gd']) : super(locale);

  @override
  String get appTitle => 'aplacaid_cairt_ec';

  @override
  String get login => 'Log a-steach';

  @override
  String get mobile_no => 'Àireamh Fòn-làimhe';

  @override
  String get enter_mobile_no => 'Cuir a-steach Àireamh Fòn-làimhe';

  @override
  String get new_user => 'Cleachdaiche ùr?';

  @override
  String get register_now => 'Clàraich a-nis';

  @override
  String get register => 'Clàraich';

  @override
  String get terms_condition => 'Teirmichean & Cùmhnantan';

  @override
  String get app_terms_conditions =>
      'Teirmichean is Cùmhnantan nan Aplacaidean';

  @override
  String get accept_close => 'Gabh ris & Dùin';

  @override
  String get register_no => 'Àireamh Clàraidh';

  @override
  String get register_text_one =>
      'Feumaidh sinn dearbhadh a dhèanamh air an àireamh fòn-làimhe agad le bhith a’ cur facal-faire aon-ùine thugad.';

  @override
  String get register_text_two =>
      'Cuir a-steach an àireamh fòn-làimhe agad gun ro-leasachain sam bith agus brùth air a’ phutan cuir a-steach.';

  @override
  String get enable_permission => 'Cuir Cead an Gnìomh';

  @override
  String get allow_permission =>
      'Thoir cead le làimh gus an obrachadh a chrìochnachadh.';

  @override
  String get dismiss => 'Cuir às';

  @override
  String get open_settings => 'Fosgail Roghainnean';

  @override
  String get unexpectedError => 'Thachair mearachd ris nach robh dùil';

  @override
  String get noInternetConnection => 'Gun cheangal eadar-lìn';

  @override
  String get notFound => 'Gun a lorg';

  @override
  String get databaseDisconnected =>
      'Dh\'fheumadh an obair a bhith air a stad air sgàth dì-cheangal lìonra';

  @override
  String get datatbaseExpiredToken =>
      'Tha an comharra dearbhaidh a chaidh a thoirt seachad air tighinn gu crìch';

  @override
  String get databaseInvalidToken =>
      'Tha an comharra dearbhaidh ainmichte mì-dhligheach';

  @override
  String get missingPhoneNumber =>
      'Chan fhaod an àireamh fòn-làimhe a bhith falamh';

  @override
  String get invalidPhoneNumber => 'Thoir seachad àireamh fòn-làimhe dligheach';

  @override
  String get invalidVerificationCode => 'OTP neo-dhligheach';

  @override
  String get missingVerificationCode => 'OTP neo-dhligheach';

  @override
  String get codeExpired =>
      'Tha an OTP air tighinn gu crìch. Feuch ris a-rithist.';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError => 'Thachair mearachd clàraidh neo-aithnichte';

  @override
  String get profileImageUploadError =>
      'Cha ghabh dealbh pròifil a luchdadh suas';

  @override
  String get profileImageDeleteError =>
      'Cha ghabh dealbh pròifil a dhubhadh às';

  @override
  String get clickHereForMoreInfo =>
      'briog an seo airson fiosrachadh conaltraidh';

  @override
  String unknownDatabaseError(String message) {
    return 'Mearachd Stòr-dàta neo-aithnichte: $message';
  }

  @override
  String get continue_to_quiz => 'Lean air adhart chun Cheisneachadh';

  @override
  String get continue_to_dashboard => 'Lean air adhart chun deas-bhòrd';

  @override
  String get cancel => 'Sguir dheth';

  @override
  String get done => 'Deiseil';

  @override
  String get next => 'An ath rud';

  @override
  String get verify => 'Dearbhaich';

  @override
  String get phone_number => 'Àireamh Fòn';

  @override
  String get phone_verification => 'Dearbhadh Fòn';

  @override
  String get otp => 'OTP';

  @override
  String get submit => 'Cuir a-steach';

  @override
  String get save_details => 'Sàbhail Mion-fhiosrachadh';

  @override
  String get postcode => 'Còd-puist';

  @override
  String get enter_postcode => 'Cuir a-steach a\' chòd-puist';

  @override
  String get dob => 'Latha breith';

  @override
  String get dob_placeholder => 'DD /MM /BBBB';

  @override
  String get gender => 'Gnè';

  @override
  String get male => 'M';

  @override
  String get female => 'F';

  @override
  String get other => 'Eile';

  @override
  String get do_not_disclose => 'Chan eil mi airson foillseachadh';

  @override
  String get access_code => 'Còd Ruigsinneachd';

  @override
  String get enter_access_code => 'Cuir a-steach Còd Ruigsinneachd';

  @override
  String get please_enter_access_code => 'Cuir a-steach Còd Ruigsinneachd';

  @override
  String get resend_otp => 'Ath-chuir OTP';

  @override
  String resend_otp_countdown(String time) {
    return 'Ath-chuir OTP ann an $time';
  }

  @override
  String get change_mobile => 'Atharraich Fòn-làimhe';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'Chuir sinn OTP air an àireamh fòn-làimhe agad $mobileNumber';
  }

  @override
  String get well_done => 'Math a rinn thu! Clàradh soirbheachail';

  @override
  String get registration_text =>
      'Tha do chlàradh deiseil a-nis, ge-tà, gus faighinn chun aplacaid feumaidh tu an deuchainn a chrìochnachadh san dòigh a leanas. Faodaidh tu coimhead air bhideothan foghlaim gus do chuideachadh le bhith soirbheachail san deuchainn. Ma tha còd ruigsinneachd agad, faodaidh tu an còd seo a chleachdadh gus am pròiseas deuchainn a sheachnadh.';

  @override
  String get continue_button => 'Lean air adhart';

  @override
  String get watch_text => 'Coimhead';

  @override
  String get quiz_text => 'Ceasnachadh';

  @override
  String get finish_text => 'Crìochnaich';

  @override
  String get congratulations => 'Meal do naidheachd';

  @override
  String get not_eligible_for_transaction => 'Gun a bhith airidh air malairt';

  @override
  String get to_scan_again => 'airson sganadh a-rithist!';

  @override
  String get oh_no => 'O... chan eil...';

  @override
  String get oops => 'OPS';

  @override
  String get transaction_successful => 'Gnìomh soirbheachail!';

  @override
  String get quiz_completion_text_one =>
      'Tha thu air a’ cheasnachadh a chrìochnachadh gu soirbheachail agus air gabhail riut anns an sgeama eC-Card. Bidh e comasach dhut a-nis faighinn chun liosta againn de dh’àiteachan ceadaichte agus solar condom an-asgaidh fhaighinn. Dèan cinnteach gum faod an aplacaid faighinn gu seirbheisean àite agus do chamara.';

  @override
  String get quiz_completion_text_two =>
      'Nuair a thadhlas tu air an ionad agad, feuch an innis thu dhaibh gu bheil thu nad bhall de sgeama Cairt-e Slàinte Feise agus gum bu toil leat na condoms an-asgaidh agad fhaighinn. Thèid iarraidh ort còd QR a sganadh leis an aplacaid gus an gnothach aontachadh mus tèid solar condoms a thoirt dhut.';

  @override
  String get quiz_completion_text_three =>
      'Ma tha duilgheadas sam bith agad, cuir fios chun ionad fiosrachaidh seirbheis.';

  @override
  String get quiz_completion_text_four =>
      'Thoir an aire: Tha condoms air an toirt seachad ann an àireamh stèidhichte, ann an aon mheud agus seòrsa. Chan urrainn dhut ach aon chruinneachadh a dhèanamh ann an ùine 7 latha sam bith.';

  @override
  String get error_in_playing_video =>
      'Tha mearachd ann a bhith a’ cluich a’ bhidio. Feuch ris a-rithist!!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'Gabh ris na teirmichean is cumhaichean.';

  @override
  String get user_not_found => 'Cleachdaiche gun lorg';

  @override
  String get user_disabled => 'Cleachdaiche air a dhì-chomasachadh';

  @override
  String get missing_phone_number => 'Àireamh Fòn a dhìth';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'Log a-mach';

  @override
  String get are_you_sure_logout =>
      'A bheil thu cinnteach gu bheil thu airson logadh a-mach?';

  @override
  String get delete_account => 'Sguab às Cunntas';

  @override
  String get support => 'Taic';

  @override
  String get ivts => 'IVTS';

  @override
  String get privacy_policy => 'Prìobhaideachd & Poileasaidh';

  @override
  String get accessibility_statement => 'Aithris So-ruigsinneachd';

  @override
  String get language => 'Cànan';

  @override
  String get selectLanguage => 'Tagh Cànan';

  @override
  String get venues => 'Àiteachan';

  @override
  String get education => 'Foghlam';

  @override
  String get message => 'Teachdaireachd';

  @override
  String get account => 'Cunntas';

  @override
  String get orderCompleted => 'Òrdugh Crìochnaichte';

  @override
  String get transactionDetails => 'Mion-fhiosrachadh Gnìomh';

  @override
  String get close => 'Dùin';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return 'Tapadh leibh airson ur gnothach o chionn ghoirid aig $date $time GMT. Faodaidh sibh an ath thogail agaibh às dèidh sin';
  }

  @override
  String get countdownDay => 'latha';

  @override
  String get countdownHour => 'uair';

  @override
  String get countdownMin => 'mionaid';

  @override
  String get countdownSec => 'diog';

  @override
  String get welcomeToEcCard => 'Fàilte don aplacaid eC-Card';

  @override
  String get registrationDisclaimer =>
      'Thoir an aire nach eil an aplacaid seo airson casg-gineamhainn èiginneach. Ma tha feum agad orra, cuir fios chun bhùth-leigheadaireachd ionadail agad no chun t-seirbheis slàinte feise agad gu dìreach.';

  @override
  String get videos => 'Bhideothan';

  @override
  String get documents => 'Sgrìobhainnean';

  @override
  String get weblinks => 'Ceanglaichean-lìn';

  @override
  String get no_weblinks => 'Cha deach ceanglaichean-lìn foghlaim a lorg';

  @override
  String get weblink_opens_in_browser => 'Fosglaidh seo sa bhrabhsair';

  @override
  String sizeLabel(String size) {
    return 'Meud: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count seallaidhean';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'Stòran';

  @override
  String get kiosk => 'Ciosg';

  @override
  String get search => 'Lorg';

  @override
  String get addressLabel => 'Seòladh:';

  @override
  String get notesLabel => 'Notaichean:';

  @override
  String get directions => 'Stiùiridhean';

  @override
  String get noKiosksAvailable =>
      'Chan eil bothain sam bith rim faighinn an-dràsta.';

  @override
  String get noNotificationsYet => 'Gun fiosan fhathast!';

  @override
  String get selectProduct => 'Tagh Toradh';

  @override
  String get noActiveProducts =>
      'Cha deach bathar gnìomhach sam bith a lorg sa bhùth seo.';

  @override
  String get productDescription => 'Tuairisgeul an toraidh';

  @override
  String get productSelectionWarning =>
      'Dèan cinnteach gun dèan thu an taghadh ceart oir chan eil cead ach aon taghadh a dhèanamh gach ùine òrdachaidh.';

  @override
  String get confirmSelection => 'Dearbhaich an taghadh';

  @override
  String get productDescriptionLabel => 'Tuairisgeul Bathar:';

  @override
  String get back => 'Air ais';

  @override
  String get confirm => 'Dearbhaich';

  @override
  String get skip => 'Leum';

  @override
  String get settings => 'Roghainnean';

  @override
  String get systemTheme => 'Cuspair an t-Siostaim';

  @override
  String get lightTheme => 'Cuspair Solais';

  @override
  String get darkTheme => 'Cuspair Dorcha';

  @override
  String get transactions => 'Gnìomhan';

  @override
  String get allowUnlimitedTransactions =>
      'A bheil cead agad gnothaichean gun chrìoch a cheadachadh?';

  @override
  String get delete => 'Sguab às';

  @override
  String get delete_account_warning =>
      'Aon uair \'s gun sguab thu às do chunntas, thèid a h-uile clàr tadhal agad a sguabadh às gu buan';

  @override
  String get additional_registration_questions =>
      'Ceistean clàraidh a bharrachd';

  @override
  String submission_failed(String error) {
    return 'Dh\'fhàillig an cur a-steach: $error';
  }

  @override
  String get no_questions_available => 'Chan eil ceistean rim faighinn.';

  @override
  String get select_option => 'Tagh roghainn';

  @override
  String get please_select_option => 'Tagh roghainn mas e do thoil e';

  @override
  String get select_options => 'Tagh roghainnean';

  @override
  String get please_select_at_least_one =>
      'Tagh co-dhiù aon roghainn mas e do thoil e';

  @override
  String get ok => 'Ceart ma-thà';

  @override
  String get contact_information => 'Fiosrachadh conaltraidh';

  @override
  String get send_support_message => 'Cuir teachdaireachd taic';

  @override
  String get title_hint => 'Tiotal';

  @override
  String get title_cannot_be_empty => 'Chan fhaod an tiotal a bhith falamh';

  @override
  String get description_hint => 'Tuairisgeul';

  @override
  String get description_cannot_be_empty =>
      'Chan fhaod an tuairisgeul a bhith falamh';

  @override
  String get email_invalid => 'Thoir seachad seòladh puist-d dligheach';

  @override
  String get email_hint => 'Post-d';

  @override
  String get add_attachment => 'Cuir ceangaltas ris';

  @override
  String get name_label => 'Ainm: ';

  @override
  String get email_label => 'Post-d: ';

  @override
  String get contact_number_label => 'Àireamh conaltraidh: ';

  @override
  String get enter_otp_delete_account =>
      'Cuir a-steach OTP gus do chunntas a sguabadh às';

  @override
  String get delete_confirm_warning =>
      'Às deidh dhut cur a-steach a bhrùthadh, thèid a h-uile clàr tadhal agad a sguabadh às gu buan. A bheil thu airson leantainn air adhart?';

  @override
  String get unexpected_error_try_again =>
      'Mearachd ris nach robh dùil! Feuch ris a-rithist.';

  @override
  String get gallery => 'Gailearaidh';

  @override
  String get field_is_mandatory => 'Tha an raon seo riatanach';

  @override
  String get current_location => 'Ionad làithreach';

  @override
  String get submitted_successfully => 'Air a chur a-steach gu soirbheachail!';

  @override
  String get failed_to_load_profile =>
      'Dh\'fhàillig luchdachadh dàta a\' phròifil';

  @override
  String get api_exception_not_implemented =>
      'Eisgeachd API gun a bhith air a cur an gnìomh';

  @override
  String get api_exception_request_cancelled =>
      'Iarrtas Eisgeachd API air a Chur dheth';

  @override
  String get api_exception_internal_server_error =>
      'Mearachd Frithealaiche a-staigh Eisgeachd API';

  @override
  String get api_exception_not_found => 'Cha deach eisgeachd API a lorg';

  @override
  String get api_exception_service_unavailable =>
      'Seirbheis Eisgeachd API Gun Fhaotainn';

  @override
  String get api_exception_method_not_allowed =>
      'Chan eil cead aig Modh Eisgeachd API';

  @override
  String get api_exception_bad_request => 'Iarrtas Droch Eisgeachd API';

  @override
  String get api_exception_unauthorized_request =>
      'Iarrtas Neo-ùghdarraichte airson Eisgeachd API';

  @override
  String get api_exception_unexpected_error =>
      'Mearachd ris nach robh dùil ann an eisgeachd API';

  @override
  String get api_exception_request_timeout =>
      'Crìoch-ama Iarrtas Eisgeachd API';

  @override
  String get api_exception_no_internet_connection =>
      'Eisgeachd API Gun cheangal eadar-lìn';

  @override
  String get api_exception_send_timeout => 'Eisgeachd API Cuir crìoch air ùine';

  @override
  String get api_exception_conflict => 'Còmhstri Eisgeachd API';

  @override
  String get api_exception_unable_to_process_request =>
      'Eisgeachd API Gun chomas iarrtas a phròiseasadh';

  @override
  String get api_exception_unable_to_perform_action =>
      'Eisgeachd API Gun chomas gnìomh a dhèanamh';

  @override
  String get api_exception_unauthorized_exception =>
      'Eisgeachd API Eisgeachd gun ùghdarras';

  @override
  String get api_exception_default_error => 'Mearachd Bunaiteach Eisgeachd API';

  @override
  String get api_exception_format_exception => 'Eisgeachd API Eisgeachd Cruth';

  @override
  String get api_exception_not_acceptable => 'Eisgeachd API Gun Ghabhail';

  @override
  String get version_label => 'Tionndadh';

  @override
  String get update_available_title => 'Tha ùrachadh ri fhaighinn';

  @override
  String get update_required_title => 'Feumar ùrachadh';

  @override
  String get update_available_message =>
      'Tha tionndadh ùr dhen aplacaid ri fhaighinn. Ùraich an-dràsta airson na feartan is càraidhean as ùire fhaighinn.';

  @override
  String get update_required_message =>
      'Chan eil taic ann tuilleadh don tionndadh seo dhen aplacaid. Ùraich e airson leantainn air adhart.';

  @override
  String get update_now => 'Ùraich an-dràsta';

  @override
  String get update_later => 'Nas fhaide air adhart';

  @override
  String get permission_denied => 'Cead air a dhiùltadh';

  @override
  String get online => 'Air loidhne';

  @override
  String get noProductsFound => 'Cha deach toraidhean a lorg';

  @override
  String get failedToLoadProducts => 'Dh’fhàillig luchdadh nan toraidhean.';

  @override
  String get readMore => 'Leugh tuilleadh';

  @override
  String get notEligibleToOrderNow =>
      'Chan eil thu ion-roghnach òrdachadh an-dràsta.';

  @override
  String get productDetails => 'Mion-fhiosrachadh toraidh';

  @override
  String get orderNow => 'Òrdaich a-nis';

  @override
  String get provideAddressAndContact =>
      'Thoir seachad do sheòladh\nagus àireamh-conaltraidh airson òrdugh';

  @override
  String get streetRequired => 'Sràid*';

  @override
  String get addressLineTwo => 'Loidhne seòlaidh a dhà';

  @override
  String get townCityRequired => 'Baile/Mòr-bhaile*';

  @override
  String get postcodeRequired => 'Còd-puist*';

  @override
  String get contactNoRequired => 'Àireamh-conaltraidh*';

  @override
  String get requiredField => 'Riatanach';

  @override
  String get onlineStore => 'Bùth air loidhne';

  @override
  String get confirmDeliveryInfo => 'Dearbhaich fiosrachadh lìbhrigidh';

  @override
  String get failedToPlaceOrder =>
      'Dh’fhàillig an t-òrdugh. Feuch ris a-rithist.';

  @override
  String get unexpectedErrorOccurred => 'Thachair mearachd ris nach robh dùil';

  @override
  String get orderBlockWarning =>
      'Thèid do bhacadh airson 7 làithean mus cuir thu òrdugh eile.';

  @override
  String get orderPlaced => 'Òrdugh air a chur';

  @override
  String get orderConfirmed => 'Tha an t-òrdugh agad air a dhearbhadh.';

  @override
  String get orderDetails => 'Mion-fhiosrachadh òrduigh';

  @override
  String get productNameLabel => 'Ainm toraidh:';

  @override
  String get venueNameLabel => 'Ainm àite:';

  @override
  String get orderDateLabel => 'Ceann-latha òrduigh:';

  @override
  String get orderTimeLabel => 'Àm òrduigh:';

  @override
  String get orderBlockedSevenDays =>
      'Tha thu air do bhacadh airson 7 làithean\nmus cuir thu òrdugh eile.';

  @override
  String get openingTimesText => 'Uairean fosglaidh';

  @override
  String get openingHoursMonday => 'Diluain';

  @override
  String get openingHoursTuesday => 'Dimàirt';

  @override
  String get openingHoursWednesday => 'Diciadain';

  @override
  String get openingHoursThursday => 'Diardaoin';

  @override
  String get openingHoursFriday => 'Dihaoine';

  @override
  String get openingHoursSaturday => 'Disathairne';

  @override
  String get openingHoursSunday => 'Didòmhnaich';

  @override
  String get openingHoursMonShort => 'Dil';

  @override
  String get openingHoursTueShort => 'Dim';

  @override
  String get openingHoursWedShort => 'Dic';

  @override
  String get openingHoursThuShort => 'Dia';

  @override
  String get openingHoursFriShort => 'Dih';

  @override
  String get openingHoursSatShort => 'Dis';

  @override
  String get openingHoursSunShort => 'Did';

  @override
  String get openingHoursClosed => 'dùinte';

  @override
  String get openingHoursAnd => 'agus';

  @override
  String get openingHoursTo => 'gu';

  @override
  String get orderHistory => 'Eachdraidh òrdughan';

  @override
  String get noOrdersFound => 'Cha deach òrdughan a lorg';

  @override
  String get failedToLoadOrderHistory =>
      'Cha b’ urrainn dhuinn eachdraidh nan òrdughan a luchdadh. Feuch ris a-rithist.';

  @override
  String get orderStatusLabel => 'Inbhe:';

  @override
  String get deliveryAddressLabel => 'Seòladh lìbhrigidh:';

  @override
  String get retry => 'Feuch a-rithist';

  @override
  String get something_went_wrong =>
      'Chaidh rudeigin ceàrr. Feuch ris a-rithist.';

  @override
  String get videoPlay => 'Cluich';

  @override
  String get videoPause => 'Cuir \'na stad';

  @override
  String get videoMute => 'Mùch an fhuaim';

  @override
  String get videoUnmute => 'Cuir an fhuaim air';

  @override
  String get videoUnavailable => 'Chan eil a\' bhidio seo ri fhaighinn.';

  @override
  String get videoFullScreen => 'Làn-sgrìn';

  @override
  String get videoExitFullScreen => 'Fàg an làn-sgrìn';

  @override
  String get videoSeek => 'Àite a\' video';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes mionaid $seconds diog';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$position à $duration';
  }

  @override
  String get payloadTooLarge =>
      'Tha am faidhle sin ro mhòr airson a chur. Tagh fear nas lugha.';

  @override
  String get tooManyRequests =>
      'Cus oidhirpean. Fuirich mionaid agus feuch ris a-rithist.';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'Cus oidhirpean. Feuch ris a-rithist an ceann $seconds diog.';
  }

  @override
  String get serverError =>
      'Chaidh rudeigin ceàrr air ar taobh-ne. Feuch ris a-rithist a dh\'aithghearr.';

  @override
  String get serviceUnavailable =>
      'Chan eil an t-seirbheis ri fhaighinn an-dràsta. Feuch ris a-rithist a dh\'aithghearr.';

  @override
  String get backButtonLabel => 'Air ais';

  @override
  String get scanQrCode => 'Sganaich còd QR';

  @override
  String get attachedImage => 'Dealbh ceangailte';

  @override
  String get chooseDateOfBirth => 'Tagh ceann-latha breith';
}
