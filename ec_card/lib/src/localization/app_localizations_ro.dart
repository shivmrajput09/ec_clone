// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'aplicație_ec_card';

  @override
  String get login => 'Log in';

  @override
  String get mobile_no => 'Număr de telefon mobil';

  @override
  String get enter_mobile_no => 'Introduceți numărul de telefon mobil';

  @override
  String get new_user => 'Utilizator nou?';

  @override
  String get register_now => 'Înregistrează-te acum';

  @override
  String get register => 'Registru';

  @override
  String get terms_condition => 'Termeni și condiții';

  @override
  String get app_terms_conditions => 'Termeni și condiții pentru aplicații';

  @override
  String get accept_close => 'Acceptați și închideți';

  @override
  String get register_no => 'Număr de înregistrare';

  @override
  String get register_text_one =>
      'Trebuie să vă verificăm numărul de telefon mobil trimițându-vă o parolă de unică folosință.';

  @override
  String get register_text_two =>
      'Vă rugăm să introduceți numărul dumneavoastră de telefon mobil fără prefixe și să apăsați butonul Trimite.';

  @override
  String get enable_permission => 'Activează permisiunea';

  @override
  String get allow_permission =>
      'Vă rugăm să acordați permisiunea manual pentru finalizarea operațiunii.';

  @override
  String get dismiss => 'Închide';

  @override
  String get open_settings => 'Deschideți Setările';

  @override
  String get unexpectedError => 'A apărut o eroare neașteptată';

  @override
  String get noInternetConnection => 'Fără conexiune la internet';

  @override
  String get notFound => 'Nu a fost găsit';

  @override
  String get databaseDisconnected =>
      'Operațiunea a trebuit să fie anulată din cauza unei deconectări de rețea';

  @override
  String get datatbaseExpiredToken =>
      'Tokenul de autentificare furnizat a expirat';

  @override
  String get databaseInvalidToken =>
      'Jetonul de autentificare specificat este invalid';

  @override
  String get missingPhoneNumber => 'Numărul de telefon mobil nu poate fi gol';

  @override
  String get invalidPhoneNumber =>
      'Vă rugăm să furnizați un număr de telefon mobil valid';

  @override
  String get invalidVerificationCode => 'Cod OTP nevalid';

  @override
  String get missingVerificationCode => 'Cod OTP nevalid';

  @override
  String get codeExpired =>
      'Codul OTP a expirat. Vă rugăm să retrimiteți pentru a încerca din nou.';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError =>
      'A apărut o eroare de înregistrare necunoscută';

  @override
  String get profileImageUploadError =>
      'Nu se poate încărca fotografia de profil';

  @override
  String get profileImageDeleteError =>
      'Nu se poate șterge fotografia de profil';

  @override
  String get clickHereForMoreInfo => 'click aici pentru informații de contact';

  @override
  String unknownDatabaseError(String message) {
    return 'O eroare necunoscută în baza de date: $message';
  }

  @override
  String get continue_to_quiz => 'Continuă la test';

  @override
  String get continue_to_dashboard => 'Continuați către Tabloul de bord';

  @override
  String get cancel => 'Anula';

  @override
  String get done => 'Făcut';

  @override
  String get next => 'Următorul';

  @override
  String get verify => 'Verifica';

  @override
  String get phone_number => 'Număr de telefon';

  @override
  String get phone_verification => 'Verificare telefonică';

  @override
  String get otp => 'OTP';

  @override
  String get submit => 'Trimite';

  @override
  String get save_details => 'Salvați detaliile';

  @override
  String get postcode => 'Cod poștal';

  @override
  String get enter_postcode => 'Introduceți codul poștal';

  @override
  String get dob => 'Data nașterii';

  @override
  String get dob_placeholder => 'ZZ/LL/AAAA';

  @override
  String get gender => 'Gen';

  @override
  String get male => 'M.';

  @override
  String get female => 'F';

  @override
  String get other => 'Alte';

  @override
  String get do_not_disclose => 'Nu doresc să dezvălui';

  @override
  String get access_code => 'Cod de acces';

  @override
  String get enter_access_code => 'Introduceți codul de acces';

  @override
  String get please_enter_access_code =>
      'Vă rugăm să introduceți codul de acces';

  @override
  String get resend_otp => 'Retrimiteți codul OTP';

  @override
  String resend_otp_countdown(String time) {
    return 'Retrimiteți codul OTP în $time';
  }

  @override
  String get change_mobile => 'Schimbă mobilul';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'V-am trimis un OTP pe numărul dvs. de telefon mobil $mobileNumber';
  }

  @override
  String get well_done => 'Bravo! Înregistrare reușită';

  @override
  String get registration_text =>
      'Înregistrarea ta este completă acum, însă pentru a accesa aplicația trebuie să completezi testul în procesul următor. Poți viziona videoclipuri educaționale care te vor ajuta să treci testul. Dacă ai furnizat un cod de acces, poți folosi acest cod pentru a ocoli procesul de testare.';

  @override
  String get continue_button => 'Continua';

  @override
  String get watch_text => 'Ceas';

  @override
  String get quiz_text => 'Test';

  @override
  String get finish_text => 'Termina';

  @override
  String get congratulations => 'Felicitări';

  @override
  String get not_eligible_for_transaction =>
      'Nu este eligibil pentru tranzacție';

  @override
  String get to_scan_again => 'pentru a scana din nou!';

  @override
  String get oh_no => 'O... nu...';

  @override
  String get oops => 'Ups!';

  @override
  String get transaction_successful => 'Tranzacție reușită!';

  @override
  String get quiz_completion_text_one =>
      'Ați finalizat cu succes testul și ați fost acceptat în schema eC-Card. Acum veți putea accesa lista noastră de locații aprobate și veți putea ridica stocul gratuit de prezervative. Vă rugăm să vă asigurați că aplicația poate accesa serviciile de localizare și camera dvs.';

  @override
  String get quiz_completion_text_two =>
      'Când vizitați locația, vă rugăm să îi anunțați că sunteți membru al programului Sexual Health eC-Card și că doriți să vă ridicați prezervativele gratuite. Vi se va cere să scanați un cod QR folosind aplicația pentru a aproba tranzacția înainte de a vi se înmâna rezerva de prezervative.';

  @override
  String get quiz_completion_text_three =>
      'Dacă întâmpinați vreo problemă, vă rugăm să contactați centrul de informații despre service.';

  @override
  String get quiz_completion_text_four =>
      'Atenție: Prezervativele sunt furnizate într-o cantitate fixă, într-o singură mărime și un singur tip. Puteți face o singură colectare în orice perioadă de 7 zile.';

  @override
  String get error_in_playing_video =>
      'A apărut o eroare la redarea videoclipului. Vă rugăm să încercați din nou!!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'Vă rugăm să acceptați termenii și condițiile.';

  @override
  String get user_not_found => 'Utilizator negăsit';

  @override
  String get user_disabled => 'Utilizator dezactivat';

  @override
  String get missing_phone_number => 'Număr de telefon lipsă';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'Deconectare';

  @override
  String get are_you_sure_logout => 'Sigur vrei să te deconectezi?';

  @override
  String get delete_account => 'Șterge contul';

  @override
  String get support => 'Sprijin';

  @override
  String get ivts => 'IVTS';

  @override
  String get privacy_policy => 'Politica de confidențialitate';

  @override
  String get accessibility_statement => 'Declarație de accesibilitate';

  @override
  String get language => 'Limbă';

  @override
  String get selectLanguage => 'Selectați limba';

  @override
  String get venues => 'Locații';

  @override
  String get education => 'Educaţie';

  @override
  String get message => 'Mesaj';

  @override
  String get account => 'Cont';

  @override
  String get orderCompleted => 'Comandă finalizată';

  @override
  String get transactionDetails => 'Detalii tranzacție';

  @override
  String get close => 'Aproape';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return 'Vă mulțumim pentru tranzacția recentă de la $date $time GMT. Puteți face următoarea ridicare după';
  }

  @override
  String get countdownDay => 'zi';

  @override
  String get countdownHour => 'oră';

  @override
  String get countdownMin => 'min';

  @override
  String get countdownSec => 'sec';

  @override
  String get welcomeToEcCard => 'Bun venit la aplicația eC-Card';

  @override
  String get registrationDisclaimer =>
      'Vă rugăm să rețineți că această aplicație nu este pentru contraceptive de urgență. Dacă aveți nevoie de acestea, vă rugăm să contactați farmacia locală sau serviciul de sănătate sexuală direct.';

  @override
  String get videos => 'Videoclipuri';

  @override
  String get documents => 'Documente';

  @override
  String get weblinks => 'Linkuri web';

  @override
  String get no_weblinks => 'Nu s-au găsit linkuri educaționale';

  @override
  String get weblink_opens_in_browser => 'Se deschide în browser';

  @override
  String sizeLabel(String size) {
    return 'Mărime: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count vizualizări';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'Magazine';

  @override
  String get kiosk => 'Chioşc';

  @override
  String get search => 'Căutare';

  @override
  String get addressLabel => 'Adresă:';

  @override
  String get notesLabel => 'Note:';

  @override
  String get directions => 'Indicații rutiere';

  @override
  String get noKiosksAvailable => 'În prezent, nu sunt disponibile chioșcuri.';

  @override
  String get noNotificationsYet => 'Încă nu există notificări!';

  @override
  String get selectProduct => 'Selectați produsul';

  @override
  String get noActiveProducts =>
      'Nu s-au găsit produse active în acest magazin.';

  @override
  String get productDescription => 'Descriere produs';

  @override
  String get productSelectionWarning =>
      'Vă rugăm să vă asigurați că faceți selecția corectă, deoarece este permisă o singură selecție per perioadă de comandă.';

  @override
  String get confirmSelection => 'Confirmați selecția';

  @override
  String get productDescriptionLabel => 'Descriere produs:';

  @override
  String get back => 'Spate';

  @override
  String get confirm => 'Confirma';

  @override
  String get skip => 'Sari peste';

  @override
  String get settings => 'Setări';

  @override
  String get systemTheme => 'Temă de sistem';

  @override
  String get lightTheme => 'Temă luminoasă';

  @override
  String get darkTheme => 'Temă întunecată';

  @override
  String get transactions => 'Tranzacții';

  @override
  String get allowUnlimitedTransactions => 'Permiteți tranzacții nelimitate?';

  @override
  String get delete => 'Șterge';

  @override
  String get delete_account_warning =>
      'Odată ce vă ștergeți contul, toate înregistrările vizitelor dumneavoastră vor fi șterse permanent';

  @override
  String get additional_registration_questions =>
      'Întrebări suplimentare de înregistrare';

  @override
  String submission_failed(String error) {
    return 'Trimiterea a eșuat: $error';
  }

  @override
  String get no_questions_available => 'Nu sunt întrebări disponibile.';

  @override
  String get select_option => 'Selectați o opțiune';

  @override
  String get please_select_option => 'Vă rugăm să selectați o opțiune';

  @override
  String get select_options => 'Selectați opțiuni';

  @override
  String get please_select_at_least_one =>
      'Vă rugăm să selectați cel puțin o opțiune';

  @override
  String get ok => 'OK';

  @override
  String get contact_information => 'Informații de contact';

  @override
  String get send_support_message => 'Trimiteți mesaj de asistență';

  @override
  String get title_hint => 'Titlu';

  @override
  String get title_cannot_be_empty => 'Titlul nu poate fi gol';

  @override
  String get description_hint => 'Descriere';

  @override
  String get description_cannot_be_empty => 'Descrierea nu poate fi goală';

  @override
  String get email_invalid =>
      'Vă rugăm să introduceți o adresă de e-mail validă';

  @override
  String get email_hint => 'E-mail';

  @override
  String get add_attachment => 'Adăugați atașament';

  @override
  String get name_label => 'Nume: ';

  @override
  String get email_label => 'E-mail: ';

  @override
  String get contact_number_label => 'Număr de contact: ';

  @override
  String get enter_otp_delete_account =>
      'Introduceți OTP pentru a vă șterge contul';

  @override
  String get delete_confirm_warning =>
      'După apăsarea butonului de trimitere, toate înregistrările vizitelor dumneavoastră vor fi șterse permanent. Doriți să continuați?';

  @override
  String get unexpected_error_try_again =>
      'Eroare neașteptată! Vă rugăm să încercați din nou.';

  @override
  String get gallery => 'Galerie';

  @override
  String get field_is_mandatory => 'Acest câmp este obligatoriu';

  @override
  String get current_location => 'Locația curentă';

  @override
  String get submitted_successfully => 'Trimis cu succes!';

  @override
  String get failed_to_load_profile =>
      'Nu s-au putut încărca datele profilului';

  @override
  String get api_exception_not_implemented => 'Excepție API neimplementată';

  @override
  String get api_exception_request_cancelled =>
      'Cerere de excepție API anulată';

  @override
  String get api_exception_internal_server_error =>
      'Excepție API Eroare internă server';

  @override
  String get api_exception_not_found => 'Excepție API negăsită';

  @override
  String get api_exception_service_unavailable =>
      'Serviciul de excepții API indisponibil';

  @override
  String get api_exception_method_not_allowed =>
      'Metoda de excepție API nu este permisă';

  @override
  String get api_exception_bad_request => 'Excepție API - Cerere greșită';

  @override
  String get api_exception_unauthorized_request =>
      'Excepție API - Cerere neautorizată';

  @override
  String get api_exception_unexpected_error =>
      'Excepție API Eroare neașteptată';

  @override
  String get api_exception_request_timeout =>
      'Expirare solicitare excepție API';

  @override
  String get api_exception_no_internet_connection =>
      'Excepție API Fără conexiune la internet';

  @override
  String get api_exception_send_timeout => 'Expirare trimitere excepție API';

  @override
  String get api_exception_conflict => 'Conflict de excepții API';

  @override
  String get api_exception_unable_to_process_request =>
      'Excepție API: Imposibil de procesat solicitarea';

  @override
  String get api_exception_unable_to_perform_action =>
      'Excepție API: Imposibil de efectuat o acțiune';

  @override
  String get api_exception_unauthorized_exception =>
      'Excepție API Excepție neautorizată';

  @override
  String get api_exception_default_error => 'Eroare implicită excepție API';

  @override
  String get api_exception_format_exception =>
      'Excepție de format pentru excepția API';

  @override
  String get api_exception_not_acceptable => 'Excepție API inacceptabilă';

  @override
  String get version_label => 'Versiune';

  @override
  String get update_available_title => 'Actualizare disponibilă';

  @override
  String get update_required_title => 'Actualizare necesară';

  @override
  String get update_available_message =>
      'Este disponibilă o versiune nouă a aplicației. Actualizați acum pentru a beneficia de cele mai noi funcții și remedieri.';

  @override
  String get update_required_message =>
      'Această versiune a aplicației nu mai este acceptată. Actualizați pentru a continua.';

  @override
  String get update_now => 'Actualizați acum';

  @override
  String get update_later => 'Mai târziu';

  @override
  String get permission_denied => 'Acces refuzat';

  @override
  String get online => 'Pe internet';

  @override
  String get noProductsFound => 'Nu s-au găsit produse';

  @override
  String get failedToLoadProducts => 'Încărcarea produselor a eșuat.';

  @override
  String get readMore => 'Citiți mai mult';

  @override
  String get notEligibleToOrderNow =>
      'Nu sunteți eligibil să plasați o comandă acum.';

  @override
  String get productDetails => 'Detalii produs';

  @override
  String get orderNow => 'Comandați acum';

  @override
  String get provideAddressAndContact =>
      'Furnizați adresa\nși numărul de contact pentru comandă';

  @override
  String get streetRequired => 'Stradă*';

  @override
  String get addressLineTwo => 'Linia a doua a adresei';

  @override
  String get townCityRequired => 'Oraș*';

  @override
  String get postcodeRequired => 'Cod poștal*';

  @override
  String get contactNoRequired => 'Număr de contact*';

  @override
  String get requiredField => 'Obligatoriu';

  @override
  String get onlineStore => 'Magazin online';

  @override
  String get confirmDeliveryInfo => 'Confirmați informațiile de livrare';

  @override
  String get failedToPlaceOrder =>
      'Comanda nu a putut fi plasată. Încercați din nou.';

  @override
  String get unexpectedErrorOccurred => 'A apărut o eroare neașteptată';

  @override
  String get orderBlockWarning =>
      'Veți fi blocat timp de 7 zile înainte de a plasa următoarea comandă.';

  @override
  String get orderPlaced => 'Comandă plasată';

  @override
  String get orderConfirmed => 'Comanda dvs. este acum confirmată.';

  @override
  String get orderDetails => 'Detalii comandă';

  @override
  String get productNameLabel => 'Nume produs:';

  @override
  String get venueNameLabel => 'Nume locație:';

  @override
  String get orderDateLabel => 'Data comenzii:';

  @override
  String get orderTimeLabel => 'Ora comenzii:';

  @override
  String get orderBlockedSevenDays =>
      'Sunteți blocat timp de 7 zile\nînainte de a plasa următoarea comandă.';

  @override
  String get openingTimesText => 'Program';

  @override
  String get openingHoursMonday => 'luni';

  @override
  String get openingHoursTuesday => 'marți';

  @override
  String get openingHoursWednesday => 'miercuri';

  @override
  String get openingHoursThursday => 'joi';

  @override
  String get openingHoursFriday => 'vineri';

  @override
  String get openingHoursSaturday => 'sâmbătă';

  @override
  String get openingHoursSunday => 'duminică';

  @override
  String get openingHoursMonShort => 'lun';

  @override
  String get openingHoursTueShort => 'mar';

  @override
  String get openingHoursWedShort => 'mie';

  @override
  String get openingHoursThuShort => 'joi';

  @override
  String get openingHoursFriShort => 'vin';

  @override
  String get openingHoursSatShort => 'sâm';

  @override
  String get openingHoursSunShort => 'dum';

  @override
  String get openingHoursClosed => 'închis';

  @override
  String get openingHoursAnd => 'și';

  @override
  String get openingHoursTo => 'până';

  @override
  String get orderHistory => 'Istoric comenzi';

  @override
  String get noOrdersFound => 'Nu s-au găsit comenzi';

  @override
  String get failedToLoadOrderHistory =>
      'Nu s-a putut încărca istoricul comenzilor. Încercați din nou.';

  @override
  String get orderStatusLabel => 'Stare:';

  @override
  String get deliveryAddressLabel => 'Adresă de livrare:';

  @override
  String get retry => 'Reîncercați';

  @override
  String get something_went_wrong =>
      'Ceva nu a funcționat. Vă rugăm încercați din nou.';

  @override
  String get videoPlay => 'Redare';

  @override
  String get videoPause => 'Pauză';

  @override
  String get videoMute => 'Fără sunet';

  @override
  String get videoUnmute => 'Activează sunetul';

  @override
  String get videoUnavailable => 'Acest videoclip nu este disponibil.';

  @override
  String get videoFullScreen => 'Ecran complet';

  @override
  String get videoExitFullScreen => 'Ieși din ecran complet';

  @override
  String get videoSeek => 'Poziția videoclipului';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes minute $seconds secunde';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$position din $duration';
  }

  @override
  String get payloadTooLarge =>
      'Acest fișier este prea mare pentru a fi trimis. Alegeți unul mai mic.';

  @override
  String get tooManyRequests =>
      'Prea multe încercări. Așteptați un moment și încercați din nou.';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'Prea multe încercări. Încercați din nou în $seconds secunde.';
  }

  @override
  String get serverError =>
      'Ceva nu a funcționat de partea noastră. Încercați din nou în scurt timp.';

  @override
  String get serviceUnavailable =>
      'Serviciul este temporar indisponibil. Încercați din nou în scurt timp.';

  @override
  String get backButtonLabel => 'Înapoi';

  @override
  String get scanQrCode => 'Scanează codul QR';

  @override
  String get attachedImage => 'Imagine atașată';

  @override
  String get chooseDateOfBirth => 'Alegeți data nașterii';
}
