// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'aplikacja_ec_card';

  @override
  String get login => 'Zaloguj się';

  @override
  String get mobile_no => 'Numer telefonu komórkowego';

  @override
  String get enter_mobile_no => 'Wprowadź numer telefonu komórkowego.';

  @override
  String get new_user => 'Nowy użytkownik?';

  @override
  String get register_now => 'Zarejestruj się teraz';

  @override
  String get register => 'Rejestr';

  @override
  String get terms_condition => 'Warunki i zasady';

  @override
  String get app_terms_conditions => 'Warunki korzystania z aplikacji';

  @override
  String get accept_close => 'Zaakceptuj i zamknij';

  @override
  String get register_no => 'Numer rejestru';

  @override
  String get register_text_one =>
      'Musimy zweryfikować Twój numer telefonu komórkowego, wysyłając Ci jednorazowe hasło.';

  @override
  String get register_text_two =>
      'Proszę wpisać numer telefonu komórkowego bez prefiksów i nacisnąć przycisk Prześlij.';

  @override
  String get enable_permission => 'Włącz uprawnienia';

  @override
  String get allow_permission =>
      'Aby dokończyć operację, proszę ręcznie udzielić zezwolenia.';

  @override
  String get dismiss => 'Odrzucać';

  @override
  String get open_settings => 'Otwórz ustawienia';

  @override
  String get unexpectedError => 'Wystąpił nieoczekiwany błąd';

  @override
  String get noInternetConnection => 'Brak połączenia internetowego';

  @override
  String get notFound => 'Nie znaleziono';

  @override
  String get databaseDisconnected =>
      'Operację trzeba było przerwać z powodu rozłączenia sieci';

  @override
  String get datatbaseExpiredToken => 'Dostarczony token autoryzacyjny wygasł';

  @override
  String get databaseInvalidToken =>
      'Podany token uwierzytelniania jest nieprawidłowy';

  @override
  String get missingPhoneNumber =>
      'Numer telefonu komórkowego nie może być pusty';

  @override
  String get invalidPhoneNumber =>
      'Proszę podać prawidłowy numer telefonu komórkowego';

  @override
  String get invalidVerificationCode => 'Nieprawidłowy kod jednorazowy';

  @override
  String get missingVerificationCode => 'Nieprawidłowy kod jednorazowy';

  @override
  String get codeExpired =>
      'Hasło jednorazowe (OTP) wygasło. Wyślij je ponownie, aby spróbować ponownie.';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError => 'Wystąpił nieznany błąd rejestracji';

  @override
  String get profileImageUploadError =>
      'Nie można przesłać zdjęcia profilowego';

  @override
  String get profileImageDeleteError => 'Nie można usunąć zdjęcia profilowego';

  @override
  String get clickHereForMoreInfo =>
      'kliknij tutaj, aby uzyskać dane kontaktowe';

  @override
  String unknownDatabaseError(String message) {
    return 'Nieznany błąd bazy danych: $message';
  }

  @override
  String get continue_to_quiz => 'Przejdź do quizu';

  @override
  String get continue_to_dashboard => 'Przejdź do pulpitu nawigacyjnego';

  @override
  String get cancel => 'Anulować';

  @override
  String get done => 'Zrobione';

  @override
  String get next => 'Następny';

  @override
  String get verify => 'Zweryfikować';

  @override
  String get phone_number => 'Numer telefonu';

  @override
  String get phone_verification => 'Weryfikacja telefoniczna';

  @override
  String get otp => 'OTP';

  @override
  String get submit => 'Składać';

  @override
  String get save_details => 'Zapisz szczegóły';

  @override
  String get postcode => 'Kod pocztowy';

  @override
  String get enter_postcode => 'Wprowadź kod pocztowy';

  @override
  String get dob => 'Data urodzenia';

  @override
  String get dob_placeholder => 'DD/MM/RRRR';

  @override
  String get gender => 'Płeć';

  @override
  String get male => 'M';

  @override
  String get female => 'F';

  @override
  String get other => 'Inny';

  @override
  String get do_not_disclose => 'Nie chcę ujawniać';

  @override
  String get access_code => 'Kod dostępu';

  @override
  String get enter_access_code => 'Wprowadź kod dostępu';

  @override
  String get please_enter_access_code => 'Proszę wprowadzić kod dostępu';

  @override
  String get resend_otp => 'Wyślij ponownie OTP';

  @override
  String resend_otp_countdown(String time) {
    return 'Wyślij ponownie OTP za $time';
  }

  @override
  String get change_mobile => 'Zmień telefon komórkowy';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'Wysłaliśmy jednorazowe hasło na Twój numer telefonu komórkowego $mobileNumber';
  }

  @override
  String get well_done => 'Brawo! Rejestracja pomyślna';

  @override
  String get registration_text =>
      'Rejestracja jest już ukończona. Aby jednak uzyskać dostęp do aplikacji, musisz ukończyć quiz zgodnie z poniższą procedurą. Obejrzyj filmy edukacyjne, które pomogą Ci zdać quiz. Jeśli podałeś kod dostępu, możesz go użyć, aby ominąć procedurę quizu.';

  @override
  String get continue_button => 'Kontynuować';

  @override
  String get watch_text => 'Oglądać';

  @override
  String get quiz_text => 'Kwiz';

  @override
  String get finish_text => 'Skończyć';

  @override
  String get congratulations => 'Gratulacje';

  @override
  String get not_eligible_for_transaction =>
      'Nie kwalifikuje się do transakcji';

  @override
  String get to_scan_again => 'aby zeskanować ponownie!';

  @override
  String get oh_no => 'O nie..';

  @override
  String get oops => 'Ups!';

  @override
  String get transaction_successful => 'Transakcja pomyślna!';

  @override
  String get quiz_completion_text_one =>
      'Pomyślnie ukończyłeś quiz i zostałeś przyjęty do programu eC-Card. Teraz będziesz mieć dostęp do naszej listy zatwierdzonych punktów i będziesz mógł odebrać bezpłatny zapas prezerwatyw. Upewnij się, że aplikacja ma dostęp do usług lokalizacji i Twojego aparatu.';

  @override
  String get quiz_completion_text_two =>
      'Podczas wizyty w placówce prosimy o poinformowanie, że jesteś członkiem programu eC-Card Zdrowia Seksualnego i chcesz odebrać darmowe prezerwatywy. Przed otrzymaniem zapasu prezerwatyw zostaniesz poproszony o zeskanowanie kodu QR za pomocą aplikacji w celu zatwierdzenia transakcji.';

  @override
  String get quiz_completion_text_three =>
      'Jeśli masz jakiś problem, skontaktuj się z centrum informacji służbowej.';

  @override
  String get quiz_completion_text_four =>
      'Uwaga: Prezerwatywy są dostarczane w stałej ilości, w jednym rozmiarze i typie. W ciągu 7 dni można dokonać tylko jednego odbioru.';

  @override
  String get error_in_playing_video =>
      'Wystąpił błąd podczas odtwarzania filmu. Spróbuj ponownie!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'Proszę zaakceptować regulamin.';

  @override
  String get user_not_found => 'Użytkownik nie znaleziony';

  @override
  String get user_disabled => 'Użytkownik wyłączony';

  @override
  String get missing_phone_number => 'Brak numeru telefonu';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'Wyloguj';

  @override
  String get are_you_sure_logout => 'Czy na pewno chcesz się wylogować?';

  @override
  String get delete_account => 'Usuń konto';

  @override
  String get support => 'Wsparcie';

  @override
  String get ivts => 'IVTS';

  @override
  String get privacy_policy => 'Polityka prywatności';

  @override
  String get accessibility_statement => 'Oświadczenie o dostępności';

  @override
  String get language => 'Język';

  @override
  String get selectLanguage => 'Wybierz język';

  @override
  String get venues => 'Miejsca';

  @override
  String get education => 'Edukacja';

  @override
  String get message => 'Wiadomość';

  @override
  String get account => 'Konto';

  @override
  String get orderCompleted => 'Zamówienie zrealizowane';

  @override
  String get transactionDetails => 'Szczegóły transakcji';

  @override
  String get close => 'Zamknąć';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return 'Dziękujemy za ostatnią transakcję o godzinie $date $time GMT. Możesz odebrać przesyłkę po';
  }

  @override
  String get countdownDay => 'dzień';

  @override
  String get countdownHour => 'godzina';

  @override
  String get countdownMin => 'min';

  @override
  String get countdownSec => 'sek';

  @override
  String get welcomeToEcCard => 'Witamy w aplikacji eC-Card';

  @override
  String get registrationDisclaimer =>
      'Uwaga: ta aplikacja nie jest przeznaczona do antykoncepcji awaryjnej. Jeśli jej potrzebujesz, skontaktuj się bezpośrednio z lokalną apteką lub poradnią zdrowia seksualnego.';

  @override
  String get videos => 'Filmy';

  @override
  String get documents => 'Dokumenty';

  @override
  String get weblinks => 'Linki';

  @override
  String get no_weblinks => 'Nie znaleziono linków edukacyjnych';

  @override
  String get weblink_opens_in_browser => 'Otwiera się w przeglądarce';

  @override
  String sizeLabel(String size) {
    return 'Rozmiar: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count wyświetleń';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'Sklepy';

  @override
  String get kiosk => 'Kiosk';

  @override
  String get search => 'Szukaj';

  @override
  String get addressLabel => 'Adres: ';

  @override
  String get notesLabel => 'Uwagi:';

  @override
  String get directions => 'Wskazówki';

  @override
  String get noKiosksAvailable => 'Obecnie nie ma żadnych kiosków.';

  @override
  String get noNotificationsYet => 'Brak powiadomień!';

  @override
  String get selectProduct => 'Wybierz produkt';

  @override
  String get noActiveProducts =>
      'Nie znaleziono aktywnych produktów w tym sklepie.';

  @override
  String get productDescription => 'Opis produktu';

  @override
  String get productSelectionWarning =>
      'Upewnij się, że dokonałeś właściwego wyboru, ponieważ w danym okresie składania zamówienia możesz dokonać tylko jednego wyboru.';

  @override
  String get confirmSelection => 'Potwierdź wybór';

  @override
  String get productDescriptionLabel => 'Opis produktu:';

  @override
  String get back => 'Z powrotem';

  @override
  String get confirm => 'Potwierdzać';

  @override
  String get skip => 'Pominąć';

  @override
  String get settings => 'Ustawienia';

  @override
  String get systemTheme => 'Motyw systemowy';

  @override
  String get lightTheme => 'Jasny motyw';

  @override
  String get darkTheme => 'Ciemny motyw';

  @override
  String get transactions => 'Transakcje';

  @override
  String get allowUnlimitedTransactions =>
      'Czy zezwolić na nieograniczoną liczbę transakcji?';

  @override
  String get delete => 'Usuń';

  @override
  String get delete_account_warning =>
      'Po usunięciu konta wszystkie Twoje rekordy wizyt zostaną trwale usunięte';

  @override
  String get additional_registration_questions =>
      'Dodatkowe pytania rejestracyjne';

  @override
  String submission_failed(String error) {
    return 'Wysyłanie nie powiodło się: $error';
  }

  @override
  String get no_questions_available => 'Brak dostępnych pytań.';

  @override
  String get select_option => 'Wybierz opcję';

  @override
  String get please_select_option => 'Proszę wybrać opcję';

  @override
  String get select_options => 'Wybierz opcje';

  @override
  String get please_select_at_least_one =>
      'Proszę wybrać co najmniej jedną opcję';

  @override
  String get ok => 'OK';

  @override
  String get contact_information => 'Dane kontaktowe';

  @override
  String get send_support_message => 'Wyślij wiadomość do pomocy technicznej';

  @override
  String get title_hint => 'Tytuł';

  @override
  String get title_cannot_be_empty => 'Tytuł nie może być pusty';

  @override
  String get description_hint => 'Opis';

  @override
  String get description_cannot_be_empty => 'Opis nie może być pusty';

  @override
  String get email_invalid => 'Proszę podać prawidłowy adres e-mail';

  @override
  String get email_hint => 'E-mail';

  @override
  String get add_attachment => 'Dodaj załącznik';

  @override
  String get name_label => 'Imię: ';

  @override
  String get email_label => 'E-mail: ';

  @override
  String get contact_number_label => 'Numer kontaktowy: ';

  @override
  String get enter_otp_delete_account => 'Wprowadź OTP, aby usunąć swoje konto';

  @override
  String get delete_confirm_warning =>
      'Po naciśnięciu przycisku wyślij, wszystkie Twoje rekordy wizyt zostaną trwale usunięte. Czy chcesz kontynuować?';

  @override
  String get unexpected_error_try_again =>
      'Nieoczekiwany błąd! Spróbuj ponownie.';

  @override
  String get gallery => 'Galeria';

  @override
  String get field_is_mandatory => 'To pole jest wymagane';

  @override
  String get current_location => 'Bieżąca lokalizacja';

  @override
  String get submitted_successfully => 'Wysłano pomyślnie!';

  @override
  String get failed_to_load_profile => 'Nie udało się załadować danych profilu';

  @override
  String get api_exception_not_implemented =>
      'Wyjątek API nie został zaimplementowany';

  @override
  String get api_exception_request_cancelled => 'Anulowano żądanie wyjątku API';

  @override
  String get api_exception_internal_server_error =>
      'Wyjątek API: wewnętrzny błąd serwera';

  @override
  String get api_exception_not_found => 'Nie znaleziono wyjątku API';

  @override
  String get api_exception_service_unavailable =>
      'Usługa wyjątku API jest niedostępna';

  @override
  String get api_exception_method_not_allowed =>
      'Metoda wyjątku API nie jest dozwolona';

  @override
  String get api_exception_bad_request => 'Wyjątek API: nieprawidłowe żądanie';

  @override
  String get api_exception_unauthorized_request =>
      'Wyjątek API: Nieautoryzowane żądanie';

  @override
  String get api_exception_unexpected_error => 'Wyjątek API Nieoczekiwany błąd';

  @override
  String get api_exception_request_timeout =>
      'Przekroczenie limitu czasu żądania wyjątku API';

  @override
  String get api_exception_no_internet_connection =>
      'Wyjątek API: brak połączenia internetowego';

  @override
  String get api_exception_send_timeout =>
      'Przekroczono limit czasu wysyłania wyjątku API';

  @override
  String get api_exception_conflict => 'Konflikt wyjątku API';

  @override
  String get api_exception_unable_to_process_request =>
      'Wyjątek API: Nie można przetworzyć żądania';

  @override
  String get api_exception_unable_to_perform_action =>
      'Wyjątek API: Nie można wykonać akcji';

  @override
  String get api_exception_unauthorized_exception =>
      'Wyjątek API Nieautoryzowany wyjątek';

  @override
  String get api_exception_default_error => 'Wyjątek API Błąd domyślny';

  @override
  String get api_exception_format_exception => 'Wyjątek formatu wyjątku API';

  @override
  String get api_exception_not_acceptable =>
      'Wyjątek API nie jest akceptowalny';

  @override
  String get version_label => 'Wersja';

  @override
  String get update_available_title => 'Dostępna aktualizacja';

  @override
  String get update_required_title => 'Wymagana aktualizacja';

  @override
  String get update_available_message =>
      'Dostępna jest nowa wersja aplikacji. Zaktualizuj teraz, aby korzystać z najnowszych funkcji i poprawek.';

  @override
  String get update_required_message =>
      'Ta wersja aplikacji nie jest już obsługiwana. Zaktualizuj aplikację, aby kontynuować.';

  @override
  String get update_now => 'Aktualizuj teraz';

  @override
  String get update_later => 'Później';

  @override
  String get permission_denied => 'Odmowa pozwolenia';

  @override
  String get online => 'Internet';

  @override
  String get noProductsFound => 'Nie znaleziono produktów';

  @override
  String get failedToLoadProducts => 'Nie udało się załadować produktów.';

  @override
  String get readMore => 'Czytaj więcej';

  @override
  String get notEligibleToOrderNow => 'Nie możesz teraz złożyć zamówienia.';

  @override
  String get productDetails => 'Szczegóły produktu';

  @override
  String get orderNow => 'Zamów teraz';

  @override
  String get provideAddressAndContact =>
      'Podaj adres\ni numer kontaktowy do zamówienia';

  @override
  String get streetRequired => 'Ulica*';

  @override
  String get addressLineTwo => 'Druga linia adresu';

  @override
  String get townCityRequired => 'Miasto*';

  @override
  String get postcodeRequired => 'Kod pocztowy*';

  @override
  String get contactNoRequired => 'Numer kontaktowy*';

  @override
  String get requiredField => 'Wymagane';

  @override
  String get onlineStore => 'Sklep online';

  @override
  String get confirmDeliveryInfo => 'Potwierdź dane dostawy';

  @override
  String get failedToPlaceOrder =>
      'Nie udało się złożyć zamówienia. Spróbuj ponownie.';

  @override
  String get unexpectedErrorOccurred => 'Wystąpił nieoczekiwany błąd';

  @override
  String get orderBlockWarning =>
      'Zostaniesz zablokowany na 7 dni przed złożeniem kolejnego zamówienia.';

  @override
  String get orderPlaced => 'Zamówienie złożone';

  @override
  String get orderConfirmed => 'Twoje zamówienie zostało potwierdzone.';

  @override
  String get orderDetails => 'Szczegóły zamówienia';

  @override
  String get productNameLabel => 'Nazwa produktu:';

  @override
  String get venueNameLabel => 'Nazwa miejsca:';

  @override
  String get orderDateLabel => 'Data zamówienia:';

  @override
  String get orderTimeLabel => 'Godzina zamówienia:';

  @override
  String get orderBlockedSevenDays =>
      'Jesteś zablokowany na 7 dni\nprzed złożeniem kolejnego zamówienia.';

  @override
  String get openingTimesText => 'Godziny otwarcia';

  @override
  String get openingHoursMonday => 'poniedziałek';

  @override
  String get openingHoursTuesday => 'wtorek';

  @override
  String get openingHoursWednesday => 'środa';

  @override
  String get openingHoursThursday => 'czwartek';

  @override
  String get openingHoursFriday => 'piątek';

  @override
  String get openingHoursSaturday => 'sobota';

  @override
  String get openingHoursSunday => 'niedziela';

  @override
  String get openingHoursMonShort => 'pon';

  @override
  String get openingHoursTueShort => 'wt';

  @override
  String get openingHoursWedShort => 'śr';

  @override
  String get openingHoursThuShort => 'czw';

  @override
  String get openingHoursFriShort => 'pt';

  @override
  String get openingHoursSatShort => 'sob';

  @override
  String get openingHoursSunShort => 'niedz';

  @override
  String get openingHoursClosed => 'zamknięte';

  @override
  String get openingHoursAnd => 'i';

  @override
  String get openingHoursTo => 'do';

  @override
  String get orderHistory => 'Historia zamówień';

  @override
  String get noOrdersFound => 'Nie znaleziono zamówień';

  @override
  String get failedToLoadOrderHistory =>
      'Nie udało się załadować historii zamówień. Spróbuj ponownie.';

  @override
  String get orderStatusLabel => 'Status:';

  @override
  String get deliveryAddressLabel => 'Adres dostawy:';

  @override
  String get retry => 'Ponów';

  @override
  String get something_went_wrong => 'Coś poszło nie tak. Spróbuj ponownie.';

  @override
  String get videoPlay => 'Odtwórz';

  @override
  String get videoPause => 'Wstrzymaj';

  @override
  String get videoMute => 'Wycisz';

  @override
  String get videoUnmute => 'Wyłącz wyciszenie';

  @override
  String get videoUnavailable => 'Ten film jest niedostępny.';

  @override
  String get videoFullScreen => 'Pełny ekran';

  @override
  String get videoExitFullScreen => 'Zamknij pełny ekran';

  @override
  String get videoSeek => 'Pozycja filmu';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes min $seconds s';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$position z $duration';
  }

  @override
  String get payloadTooLarge =>
      'Ten plik jest za duży, aby go wysłać. Wybierz mniejszy.';

  @override
  String get tooManyRequests =>
      'Zbyt wiele prób. Odczekaj chwilę i spróbuj ponownie.';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'Zbyt wiele prób. Spróbuj ponownie za $seconds sekund.';
  }

  @override
  String get serverError =>
      'Coś poszło nie tak po naszej stronie. Spróbuj ponownie za chwilę.';

  @override
  String get serviceUnavailable =>
      'Usługa jest tymczasowo niedostępna. Spróbuj ponownie za chwilę.';

  @override
  String get backButtonLabel => 'Wstecz';

  @override
  String get scanQrCode => 'Zeskanuj kod QR';

  @override
  String get attachedImage => 'Załączony obraz';

  @override
  String get chooseDateOfBirth => 'Wybierz datę urodzenia';
}
