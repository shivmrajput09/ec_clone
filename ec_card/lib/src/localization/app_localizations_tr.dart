// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'ec_kart_uygulaması';

  @override
  String get login => 'Giriş yapmak';

  @override
  String get mobile_no => 'Cep telefonu numarası';

  @override
  String get enter_mobile_no => 'Cep telefonu numarasını girin.';

  @override
  String get new_user => 'Yeni Kullanıcı mısınız?';

  @override
  String get register_now => 'Şimdi Kayıt Olun';

  @override
  String get register => 'Kayıt olmak';

  @override
  String get terms_condition => 'Şartlar ve Koşullar';

  @override
  String get app_terms_conditions => 'Uygulama Şartları ve Koşulları';

  @override
  String get accept_close => 'Kabul Et ve Kapat';

  @override
  String get register_no => 'Kayıt Numarası';

  @override
  String get register_text_one =>
      'Size tek kullanımlık şifre göndererek cep telefonu numaranızı doğrulamamız gerekiyor.';

  @override
  String get register_text_two =>
      'Lütfen cep telefonu numaranızı herhangi bir ön ek olmadan girin ve gönder düğmesine basın.';

  @override
  String get enable_permission => 'İzinleri Etkinleştir';

  @override
  String get allow_permission =>
      'İşlemi tamamlamak için lütfen manuel olarak izin verin.';

  @override
  String get dismiss => 'Azletmek';

  @override
  String get open_settings => 'Ayarları aç';

  @override
  String get unexpectedError => 'Beklenmeyen bir hata oluştu.';

  @override
  String get noInternetConnection => 'İnternet bağlantısı yok.';

  @override
  String get notFound => 'Bulunamadı';

  @override
  String get databaseDisconnected =>
      'Ağ bağlantısının kesilmesi nedeniyle operasyon iptal edilmek zorunda kaldı.';

  @override
  String get datatbaseExpiredToken =>
      'Verilen kimlik doğrulama belirtecinin süresi doldu.';

  @override
  String get databaseInvalidToken =>
      'Belirtilen kimlik doğrulama belirteci geçersiz.';

  @override
  String get missingPhoneNumber => 'Cep telefonu numarası boş bırakılamaz.';

  @override
  String get invalidPhoneNumber =>
      'Lütfen geçerli bir cep telefonu numarası girin.';

  @override
  String get invalidVerificationCode => 'Geçersiz OTP';

  @override
  String get missingVerificationCode => 'Geçersiz OTP';

  @override
  String get codeExpired =>
      'OTP\'nin süresi doldu. Lütfen tekrar denemek için yeniden gönderin.';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError => 'Bilinmeyen bir kayıt hatası oluştu.';

  @override
  String get profileImageUploadError => 'Profil resmi yüklenemedi.';

  @override
  String get profileImageDeleteError => 'Profil resmini silemiyorum.';

  @override
  String get clickHereForMoreInfo => 'İletişim bilgileri için buraya tıklayın.';

  @override
  String unknownDatabaseError(String message) {
    return 'Bilinmeyen bir Veritabanı Hatası: $message';
  }

  @override
  String get continue_to_quiz => 'Sınava Devam Et';

  @override
  String get continue_to_dashboard => 'Kontrol Paneline Devam Et';

  @override
  String get cancel => 'İptal etmek';

  @override
  String get done => 'Tamamlamak';

  @override
  String get next => 'Sonraki';

  @override
  String get verify => 'Doğrulamak';

  @override
  String get phone_number => 'Telefon Numarası';

  @override
  String get phone_verification => 'Telefon Doğrulama';

  @override
  String get otp => 'OTP';

  @override
  String get submit => 'Göndermek';

  @override
  String get save_details => 'Ayrıntıları Kaydet';

  @override
  String get postcode => 'Posta kodu';

  @override
  String get enter_postcode => 'Posta kodunu girin';

  @override
  String get dob => 'Doğum Tarihi';

  @override
  String get dob_placeholder => 'GG/AA/YYYY';

  @override
  String get gender => 'Cinsiyet';

  @override
  String get male => 'M';

  @override
  String get female => 'F';

  @override
  String get other => 'Diğer';

  @override
  String get do_not_disclose => 'Bilgi vermek istemiyorum.';

  @override
  String get access_code => 'Erişim Kodu';

  @override
  String get enter_access_code => 'Erişim kodunu girin';

  @override
  String get please_enter_access_code => 'Lütfen Erişim Kodunu Girin';

  @override
  String get resend_otp => 'OTP\'yi yeniden gönder';

  @override
  String resend_otp_countdown(String time) {
    return '$time içinde OTP\'yi yeniden gönder';
  }

  @override
  String get change_mobile => 'Mobil Cihazı Değiştir';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return '$mobileNumber numaralı cep telefonunuza bir OTP (tek kullanımlık şifre) gönderdik.';
  }

  @override
  String get well_done => 'Tebrikler! Kayıt başarılı!';

  @override
  String get registration_text =>
      'Kayıt işleminiz tamamlandı, ancak uygulamaya erişmek için aşağıdaki süreçte yer alan sınavı tamamlamanız gerekiyor. Sınavı geçmenize yardımcı olacak eğitim videolarını izleyebilirsiniz. Erişim kodu aldıysanız, bu kodu kullanarak sınav sürecini atlayabilirsiniz.';

  @override
  String get continue_button => 'Devam etmek';

  @override
  String get watch_text => 'Kol saati';

  @override
  String get quiz_text => 'Sınav';

  @override
  String get finish_text => 'Sona ermek';

  @override
  String get congratulations => 'Tebrikler';

  @override
  String get not_eligible_for_transaction => 'İşlem için uygun değil';

  @override
  String get to_scan_again => 'Tekrar Tarayın!';

  @override
  String get oh_no => 'Ah... hayır...';

  @override
  String get oops => 'Hay aksi!';

  @override
  String get transaction_successful => 'İşlem başarıyla tamamlandı!';

  @override
  String get quiz_completion_text_one =>
      'Sınavı başarıyla tamamladınız ve eC-Card programına kabul edildiniz. Artık onaylı mekanlar listemize erişebilir ve ücretsiz prezervatifinizi alabilirsiniz. Lütfen uygulamanın konum servislerine ve kameranıza erişebildiğinden emin olun.';

  @override
  String get quiz_completion_text_two =>
      'Ziyaret ettiğiniz mekanda lütfen Cinsel Sağlık eC-Kart programının üyesi olduğunuzu ve ücretsiz prezervatiflerinizi almak istediğinizi bildirin. Prezervatifleriniz size verilmeden önce işlemi onaylamak için uygulama üzerinden bir QR kodunu taramanız istenecektir.';

  @override
  String get quiz_completion_text_three =>
      'Herhangi bir sorun yaşarsanız lütfen hizmet istihbarat merkeziyle iletişime geçin.';

  @override
  String get quiz_completion_text_four =>
      'Lütfen dikkat: Prezervatifler sabit miktarda, tek beden ve türde temin edilmektedir. 7 günlük bir süre içinde yalnızca bir kez teslim alma işlemi yapabilirsiniz.';

  @override
  String get error_in_playing_video =>
      'Video oynatılırken bir hata oluştu. Lütfen tekrar deneyin!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'Lütfen şartlar ve koşulları kabul edin.';

  @override
  String get user_not_found => 'Kullanıcı Bulunamadı';

  @override
  String get user_disabled => 'Kullanıcı Devre Dışı Bırakıldı';

  @override
  String get missing_phone_number => 'Kayıp Telefon Numarası';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'Çıkış yap';

  @override
  String get are_you_sure_logout => 'Çıkış yapmak istediğinizden emin misiniz?';

  @override
  String get delete_account => 'Hesabı Sil';

  @override
  String get support => 'Destek';

  @override
  String get ivts => 'IVTS';

  @override
  String get privacy_policy => 'Gizlilik ve Politika';

  @override
  String get accessibility_statement => 'Erişilebilirlik Beyanı';

  @override
  String get language => 'Dil';

  @override
  String get selectLanguage => 'Dil Seçin';

  @override
  String get venues => 'Mekanlar';

  @override
  String get education => 'Eğitim';

  @override
  String get message => 'Mesaj';

  @override
  String get account => 'Hesap';

  @override
  String get orderCompleted => 'Sipariş Tamamlandı';

  @override
  String get transactionDetails => 'İşlem Detayları';

  @override
  String get close => 'Kapalı';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return '$date $time GMT tarihinde gerçekleştirdiğiniz son işlem için teşekkür ederiz. Bir sonraki teslim alma işleminizi daha sonra yapabilirsiniz.';
  }

  @override
  String get countdownDay => 'gün';

  @override
  String get countdownHour => 'saat';

  @override
  String get countdownMin => 'dakika';

  @override
  String get countdownSec => 'saniye';

  @override
  String get welcomeToEcCard => 'eC-Card Uygulamasına Hoş Geldiniz';

  @override
  String get registrationDisclaimer =>
      'Lütfen bu uygulamanın acil durum doğum kontrol hapları için olmadığını unutmayın. Eğer bunlara ihtiyacınız varsa, lütfen doğrudan yerel eczanenize veya cinsel sağlık hizmetlerine başvurun.';

  @override
  String get videos => 'Videolar';

  @override
  String get documents => 'Belgeler';

  @override
  String get weblinks => 'Web bağlantıları';

  @override
  String get no_weblinks => 'Eğitim bağlantısı bulunamadı';

  @override
  String get weblink_opens_in_browser => 'Tarayıcıda açılır';

  @override
  String sizeLabel(String size) {
    return 'Boyut: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count görüntüleme';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'Mağazalar';

  @override
  String get kiosk => 'Köşk';

  @override
  String get search => 'Aramak';

  @override
  String get addressLabel => 'Adres: ';

  @override
  String get notesLabel => 'Notlar:';

  @override
  String get directions => 'Yol Tarifi';

  @override
  String get noKiosksAvailable => 'Şu anda hiçbir kiosk mevcut değil.';

  @override
  String get noNotificationsYet => 'Henüz hiçbir bildirim yok!';

  @override
  String get selectProduct => 'Ürün Seç';

  @override
  String get noActiveProducts => 'Bu mağazada aktif ürün bulunmamaktadır.';

  @override
  String get productDescription => 'Ürün Açıklaması';

  @override
  String get productSelectionWarning =>
      'Lütfen doğru seçimi yaptığınızdan emin olun, çünkü her sipariş dönemi için yalnızca bir seçim yapılmasına izin verilmektedir.';

  @override
  String get confirmSelection => 'Seçimi Onayla';

  @override
  String get productDescriptionLabel => 'Ürün Açıklaması:';

  @override
  String get back => 'Geri';

  @override
  String get confirm => 'Onaylamak';

  @override
  String get skip => 'Atlamak';

  @override
  String get settings => 'Ayarlar';

  @override
  String get systemTheme => 'Sistem Teması';

  @override
  String get lightTheme => 'Açık Tema';

  @override
  String get darkTheme => 'Koyu Tema';

  @override
  String get transactions => 'İşlemler';

  @override
  String get allowUnlimitedTransactions => 'Sınırsız işleme izin verilsin mi?';

  @override
  String get delete => 'Sil';

  @override
  String get delete_account_warning =>
      'Hesabınızı sildiğinizde, tüm ziyaret kayıtlarınız kalıcı olarak silinecektir';

  @override
  String get additional_registration_questions => 'Ek kayıt soruları';

  @override
  String submission_failed(String error) {
    return 'Gönderim başarısız: $error';
  }

  @override
  String get no_questions_available => 'Mevcut soru bulunmamaktadır.';

  @override
  String get select_option => 'Seçenek seçin';

  @override
  String get please_select_option => 'Lütfen bir seçenek seçin';

  @override
  String get select_options => 'Seçenekleri seçin';

  @override
  String get please_select_at_least_one => 'Lütfen en az bir seçenek seçin';

  @override
  String get ok => 'Tamam';

  @override
  String get contact_information => 'İletişim bilgileri';

  @override
  String get send_support_message => 'Destek mesajı gönder';

  @override
  String get title_hint => 'Başlık';

  @override
  String get title_cannot_be_empty => 'Başlık boş olamaz';

  @override
  String get description_hint => 'Açıklama';

  @override
  String get description_cannot_be_empty => 'Açıklama boş olamaz';

  @override
  String get email_invalid => 'Lütfen geçerli bir e-posta adresi girin';

  @override
  String get email_hint => 'E-posta';

  @override
  String get add_attachment => 'Ek ekle';

  @override
  String get name_label => 'Ad: ';

  @override
  String get email_label => 'E-posta: ';

  @override
  String get contact_number_label => 'İletişim numarası: ';

  @override
  String get enter_otp_delete_account => 'Hesabınızı silmek için OTP girin';

  @override
  String get delete_confirm_warning =>
      'Gönder düğmesine bastıktan sonra tüm ziyaret kayıtlarınız kalıcı olarak silinecektir. Devam etmek istiyor musunuz?';

  @override
  String get unexpected_error_try_again =>
      'Beklenmeyen hata! Lütfen tekrar deneyin.';

  @override
  String get gallery => 'Galeri';

  @override
  String get field_is_mandatory => 'Bu alan zorunludur';

  @override
  String get current_location => 'Mevcut konum';

  @override
  String get submitted_successfully => 'Başarıyla gönderildi!';

  @override
  String get failed_to_load_profile => 'Profil verileri yüklenemedi';

  @override
  String get api_exception_not_implemented => 'API İstisnası Uygulanmadı';

  @override
  String get api_exception_request_cancelled =>
      'API İstisna İsteği İptal Edildi';

  @override
  String get api_exception_internal_server_error =>
      'API İstisnası Dahili Sunucu Hatası';

  @override
  String get api_exception_not_found => 'API İstisnası Bulunamadı';

  @override
  String get api_exception_service_unavailable =>
      'API İstisna Hizmeti Kullanılamıyor';

  @override
  String get api_exception_method_not_allowed =>
      'API İstisna Yöntemine İzin Verilmiyor';

  @override
  String get api_exception_bad_request => 'API Hatası: Geçersiz İstek';

  @override
  String get api_exception_unauthorized_request => 'API Hatası: Yetkisiz İstek';

  @override
  String get api_exception_unexpected_error => 'API İstisnası Beklenmeyen Hata';

  @override
  String get api_exception_request_timeout => 'API İstisnası İstek Zaman Aşımı';

  @override
  String get api_exception_no_internet_connection =>
      'API Hatası: İnternet Bağlantısı Yok';

  @override
  String get api_exception_send_timeout => 'API İstisnası Gönderme Zaman Aşımı';

  @override
  String get api_exception_conflict => 'API İstisna Çakışması';

  @override
  String get api_exception_unable_to_process_request =>
      'API Hatası: İstek İşlenemedi';

  @override
  String get api_exception_unable_to_perform_action =>
      'API Hatası: İşlem Gerçekleştirilemedi';

  @override
  String get api_exception_unauthorized_exception =>
      'API İstisnası Yetkisiz Erişim İstisnası';

  @override
  String get api_exception_default_error => 'API İstisnası Varsayılan Hatası';

  @override
  String get api_exception_format_exception => 'API İstisna Biçimi İstisnası';

  @override
  String get api_exception_not_acceptable => 'API İstisnası Kabul Edilemez';

  @override
  String get version_label => 'Sürüm';

  @override
  String get update_available_title => 'Güncelleme mevcut';

  @override
  String get update_required_title => 'Güncelleme gerekli';

  @override
  String get update_available_message =>
      'Uygulamanın yeni bir sürümü mevcut. En yeni özellikler ve düzeltmeler için şimdi güncelleyin.';

  @override
  String get update_required_message =>
      'Uygulamanın bu sürümü artık desteklenmiyor. Devam etmek için lütfen güncelleyin.';

  @override
  String get update_now => 'Şimdi güncelle';

  @override
  String get update_later => 'Daha sonra';

  @override
  String get permission_denied => 'İzin reddedildi';

  @override
  String get online => 'Çevrimiçi';

  @override
  String get noProductsFound => 'Ürün bulunamadı';

  @override
  String get failedToLoadProducts => 'Ürünler yüklenemedi.';

  @override
  String get readMore => 'Devamını oku';

  @override
  String get notEligibleToOrderNow =>
      'Şu anda sipariş vermeye uygun değilsiniz.';

  @override
  String get productDetails => 'Ürün detayları';

  @override
  String get orderNow => 'Şimdi sipariş ver';

  @override
  String get provideAddressAndContact =>
      'Sipariş için adresinizi\nve iletişim numaranızı girin';

  @override
  String get streetRequired => 'Sokak*';

  @override
  String get addressLineTwo => 'Adres satırı iki';

  @override
  String get townCityRequired => 'İlçe/Şehir*';

  @override
  String get postcodeRequired => 'Posta kodu*';

  @override
  String get contactNoRequired => 'İletişim numarası*';

  @override
  String get requiredField => 'Zorunlu';

  @override
  String get onlineStore => 'Çevrimiçi mağaza';

  @override
  String get confirmDeliveryInfo => 'Teslimat bilgilerini onayla';

  @override
  String get failedToPlaceOrder => 'Sipariş verilemedi. Lütfen tekrar deneyin.';

  @override
  String get unexpectedErrorOccurred => 'Beklenmeyen bir hata oluştu';

  @override
  String get orderBlockWarning =>
      'Sonraki siparişi vermek için 7 gün engelleneceksiniz.';

  @override
  String get orderPlaced => 'Sipariş verildi';

  @override
  String get orderConfirmed => 'Siparişiniz onaylandı.';

  @override
  String get orderDetails => 'Sipariş detayları';

  @override
  String get productNameLabel => 'Ürün adı:';

  @override
  String get venueNameLabel => 'Mekan adı:';

  @override
  String get orderDateLabel => 'Sipariş tarihi:';

  @override
  String get orderTimeLabel => 'Sipariş saati:';

  @override
  String get orderBlockedSevenDays =>
      'Sonraki siparişi vermek için\n7 gün engellendiniz.';

  @override
  String get openingTimesText => 'Açılış saatleri';

  @override
  String get openingHoursMonday => 'Pazartesi';

  @override
  String get openingHoursTuesday => 'Salı';

  @override
  String get openingHoursWednesday => 'Çarşamba';

  @override
  String get openingHoursThursday => 'Perşembe';

  @override
  String get openingHoursFriday => 'Cuma';

  @override
  String get openingHoursSaturday => 'Cumartesi';

  @override
  String get openingHoursSunday => 'Pazar';

  @override
  String get openingHoursMonShort => 'Pzt';

  @override
  String get openingHoursTueShort => 'Sal';

  @override
  String get openingHoursWedShort => 'Çar';

  @override
  String get openingHoursThuShort => 'Per';

  @override
  String get openingHoursFriShort => 'Cum';

  @override
  String get openingHoursSatShort => 'Cmt';

  @override
  String get openingHoursSunShort => 'Paz';

  @override
  String get openingHoursClosed => 'kapalı';

  @override
  String get openingHoursAnd => 've';

  @override
  String get openingHoursTo => 'ile';

  @override
  String get orderHistory => 'Sipariş geçmişi';

  @override
  String get noOrdersFound => 'Sipariş bulunamadı';

  @override
  String get failedToLoadOrderHistory =>
      'Sipariş geçmişi yüklenemedi. Lütfen tekrar deneyin.';

  @override
  String get orderStatusLabel => 'Durum:';

  @override
  String get deliveryAddressLabel => 'Teslimat adresi:';

  @override
  String get retry => 'Yeniden dene';

  @override
  String get something_went_wrong =>
      'Bir şeyler ters gitti. Lütfen tekrar deneyin.';

  @override
  String get videoPlay => 'Oynat';

  @override
  String get videoPause => 'Duraklat';

  @override
  String get videoMute => 'Sesi kapat';

  @override
  String get videoUnmute => 'Sesi aç';

  @override
  String get videoUnavailable => 'Bu video kullanılamıyor.';

  @override
  String get videoFullScreen => 'Tam ekran';

  @override
  String get videoExitFullScreen => 'Tam ekrandan çık';

  @override
  String get videoSeek => 'Video konumu';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes dakika $seconds saniye';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$duration içinde $position';
  }

  @override
  String get payloadTooLarge =>
      'Bu dosya göndermek için çok büyük. Lütfen daha küçük bir dosya seçin.';

  @override
  String get tooManyRequests =>
      'Çok fazla deneme yapıldı. Lütfen biraz bekleyip tekrar deneyin.';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'Çok fazla deneme yapıldı. Lütfen $seconds saniye içinde tekrar deneyin.';
  }

  @override
  String get serverError =>
      'Bizim tarafımızda bir sorun oluştu. Lütfen kısa süre sonra tekrar deneyin.';

  @override
  String get serviceUnavailable =>
      'Hizmet geçici olarak kullanılamıyor. Lütfen kısa süre sonra tekrar deneyin.';

  @override
  String get backButtonLabel => 'Geri';

  @override
  String get scanQrCode => 'QR kodu tara';

  @override
  String get attachedImage => 'Ekli resim';

  @override
  String get chooseDateOfBirth => 'Doğum tarihini seç';
}
