// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'aplicación de tarjeta EC';

  @override
  String get login => 'Acceso';

  @override
  String get mobile_no => 'Número de móvil';

  @override
  String get enter_mobile_no => 'Introduzca número de móvil';

  @override
  String get new_user => '¿Nuevo usuario?';

  @override
  String get register_now => 'Regístrate ahora';

  @override
  String get register => 'Registro';

  @override
  String get terms_condition => 'Términos y condiciones';

  @override
  String get app_terms_conditions =>
      'Términos y condiciones de las aplicaciones';

  @override
  String get accept_close => 'Aceptar y cerrar';

  @override
  String get register_no => 'Número de registro';

  @override
  String get register_text_one =>
      'Necesitamos verificar su número de móvil enviándole una contraseña de un solo uso.';

  @override
  String get register_text_two =>
      'Ingrese su número de teléfono móvil sin ningún prefijo y presione el botón Enviar.';

  @override
  String get enable_permission => 'Habilitar permiso';

  @override
  String get allow_permission =>
      'Permita permiso manualmente para completar la operación.';

  @override
  String get dismiss => 'Despedir';

  @override
  String get open_settings => 'Abrir configuración';

  @override
  String get unexpectedError => 'Se produjo un error inesperado';

  @override
  String get noInternetConnection => 'Sin conexión a Internet';

  @override
  String get notFound => 'Extraviado';

  @override
  String get databaseDisconnected =>
      'La operación tuvo que ser cancelada debido a una desconexión de la red.';

  @override
  String get datatbaseExpiredToken =>
      'El token de autorización proporcionado ha expirado';

  @override
  String get databaseInvalidToken =>
      'El token de autenticación especificado no es válido';

  @override
  String get missingPhoneNumber => 'El número de móvil no puede estar vacío';

  @override
  String get invalidPhoneNumber =>
      'Por favor proporcione un número de móvil válido';

  @override
  String get invalidVerificationCode => 'OTP no válido';

  @override
  String get missingVerificationCode => 'OTP no válido';

  @override
  String get codeExpired =>
      'El OTP ha expirado. Por favor, vuelva a enviarlo para intentarlo de nuevo.';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError => 'Se produjo un error de registro desconocido';

  @override
  String get profileImageUploadError => 'No se puede cargar la foto de perfil';

  @override
  String get profileImageDeleteError =>
      'No se puede eliminar la foto de perfil';

  @override
  String get clickHereForMoreInfo =>
      'Haga clic aquí para obtener información de contacto';

  @override
  String unknownDatabaseError(String message) {
    return 'Un error de base de datos desconocido: $message';
  }

  @override
  String get continue_to_quiz => 'Continuar con la prueba';

  @override
  String get continue_to_dashboard => 'Continuar al panel de control';

  @override
  String get cancel => 'Cancelar';

  @override
  String get done => 'Hecho';

  @override
  String get next => 'Próximo';

  @override
  String get verify => 'Verificar';

  @override
  String get phone_number => 'Número de teléfono';

  @override
  String get phone_verification => 'Verificación telefónica';

  @override
  String get otp => 'OTP';

  @override
  String get submit => 'Entregar';

  @override
  String get save_details => 'Guardar detalles';

  @override
  String get postcode => 'Código postal';

  @override
  String get enter_postcode => 'Introduzca el código postal';

  @override
  String get dob => 'Fecha de nacimiento';

  @override
  String get dob_placeholder => 'DD/MM/AAAA';

  @override
  String get gender => 'Género';

  @override
  String get male => 'METRO';

  @override
  String get female => 'F';

  @override
  String get other => 'Otro';

  @override
  String get do_not_disclose => 'No deseo revelar';

  @override
  String get access_code => 'Código de acceso';

  @override
  String get enter_access_code => 'Introduzca el código de acceso';

  @override
  String get please_enter_access_code =>
      'Por favor, introduzca el código de acceso';

  @override
  String get resend_otp => 'Reenviar OTP';

  @override
  String resend_otp_countdown(String time) {
    return 'Reenviar OTP en $time';
  }

  @override
  String get change_mobile => 'Cambiar de móvil';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'Hemos enviado un OTP a tu número de móvil $mobileNumber';
  }

  @override
  String get well_done => '¡Bien hecho! Registro exitoso.';

  @override
  String get registration_text =>
      'Tu registro ya está completo; sin embargo, para acceder a la aplicación, debes completar el cuestionario siguiendo el siguiente proceso. Puedes ver videos educativos para ayudarte a aprobar el cuestionario. Si proporcionaste un código de acceso, puedes usarlo para omitir el proceso del cuestionario.';

  @override
  String get continue_button => 'Continuar';

  @override
  String get watch_text => 'Mirar';

  @override
  String get quiz_text => 'Prueba';

  @override
  String get finish_text => 'Finalizar';

  @override
  String get congratulations => 'Felicidades';

  @override
  String get not_eligible_for_transaction => 'No elegible para transacción';

  @override
  String get to_scan_again => '¡Para escanear de nuevo!';

  @override
  String get oh_no => 'Oh, no..';

  @override
  String get oops => '¡Uy!';

  @override
  String get transaction_successful => '¡Transacción exitosa!';

  @override
  String get quiz_completion_text_one =>
      'Has completado el cuestionario y has sido aceptado en el programa eC-Card. Ahora podrás acceder a nuestra lista de lugares aprobados y recoger tu suministro gratuito de condones. Asegúrate de que la aplicación tenga acceso a los servicios de ubicación y a tu cámara.';

  @override
  String get quiz_completion_text_two =>
      'Al visitar su establecimiento, notifique que es miembro del programa de Tarjeta Electrónica de Salud Sexual y que desea recoger sus condones gratuitos. Se le pedirá que escanee un código QR con la aplicación para aprobar la transacción antes de recibir su suministro de condones.';

  @override
  String get quiz_completion_text_three =>
      'Si tiene algún problema, póngase en contacto con el centro de inteligencia de servicio.';

  @override
  String get quiz_completion_text_four =>
      'Nota: Los condones se suministran en una cantidad fija, de un solo tamaño y tipo. Solo se puede recoger una vez por periodo de 7 días.';

  @override
  String get error_in_playing_video =>
      'Hay un error al reproducir el vídeo. ¡Inténtalo de nuevo!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'Por favor acepte los términos y condiciones.';

  @override
  String get user_not_found => 'Usuario no encontrado';

  @override
  String get user_disabled => 'Usuario deshabilitado';

  @override
  String get missing_phone_number => 'Número de teléfono faltante';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get are_you_sure_logout =>
      '¿Estás seguro que deseas cerrar la sesión?';

  @override
  String get delete_account => 'Eliminar cuenta';

  @override
  String get support => 'Apoyo';

  @override
  String get ivts => 'IVTS';

  @override
  String get privacy_policy => 'Política de privacidad';

  @override
  String get accessibility_statement => 'Declaración de accesibilidad';

  @override
  String get language => 'Idioma';

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String get venues => 'Lugares';

  @override
  String get education => 'Educación';

  @override
  String get message => 'Mensaje';

  @override
  String get account => 'Cuenta';

  @override
  String get orderCompleted => 'Pedido completado';

  @override
  String get transactionDetails => 'Detalles de la transacción';

  @override
  String get close => 'Cerca';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return 'Gracias por su reciente transacción realizada a las $date $time GMT. Puede realizar su próxima recogida después de';
  }

  @override
  String get countdownDay => 'día';

  @override
  String get countdownHour => 'hora';

  @override
  String get countdownMin => 'mín.';

  @override
  String get countdownSec => 'segundo';

  @override
  String get welcomeToEcCard => 'Bienvenido a la aplicación eC-Card';

  @override
  String get registrationDisclaimer =>
      'Tenga en cuenta que esta aplicación no es para anticonceptivos de emergencia. Si los necesita, contacte directamente con su farmacia local o servicio de salud sexual.';

  @override
  String get videos => 'Vídeos';

  @override
  String get documents => 'Documentos';

  @override
  String get weblinks => 'Enlaces web';

  @override
  String get no_weblinks => 'No se han encontrado enlaces educativos';

  @override
  String get weblink_opens_in_browser => 'Se abre en el navegador';

  @override
  String sizeLabel(String size) {
    return 'Tamaño: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count vistas';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'Víveres';

  @override
  String get kiosk => 'Quiosco';

  @override
  String get search => 'Buscar';

  @override
  String get addressLabel => 'DIRECCIÓN: ';

  @override
  String get notesLabel => 'Notas:';

  @override
  String get directions => 'Instrucciones';

  @override
  String get noKiosksAvailable => 'Actualmente no hay quioscos disponibles.';

  @override
  String get noNotificationsYet => '¡Aún no hay notificaciones!';

  @override
  String get selectProduct => 'Seleccionar producto';

  @override
  String get noActiveProducts =>
      'No se encontraron productos activos en esta tienda.';

  @override
  String get productDescription => 'Descripción del Producto';

  @override
  String get productSelectionWarning =>
      'Asegúrese de realizar la selección correcta, ya que solo se permite una selección por período de pedido.';

  @override
  String get confirmSelection => 'Confirmar selección';

  @override
  String get productDescriptionLabel => 'Descripción del Producto:';

  @override
  String get back => 'Atrás';

  @override
  String get confirm => 'Confirmar';

  @override
  String get skip => 'Saltar';

  @override
  String get settings => 'Ajustes';

  @override
  String get systemTheme => 'Tema del sistema';

  @override
  String get lightTheme => 'Tema de luz';

  @override
  String get darkTheme => 'Tema oscuro';

  @override
  String get transactions => 'Actas';

  @override
  String get allowUnlimitedTransactions =>
      '¿Permitir transacciones ilimitadas?';

  @override
  String get delete => 'Eliminar';

  @override
  String get delete_account_warning =>
      'Una vez que elimine su cuenta, todos sus registros de visitas se eliminarán permanentemente';

  @override
  String get additional_registration_questions =>
      'Preguntas de registro adicionales';

  @override
  String submission_failed(String error) {
    return 'Error en el envío: $error';
  }

  @override
  String get no_questions_available => 'No hay preguntas disponibles.';

  @override
  String get select_option => 'Seleccionar opción';

  @override
  String get please_select_option => 'Por favor seleccione una opción';

  @override
  String get select_options => 'Seleccionar opciones';

  @override
  String get please_select_at_least_one =>
      'Por favor seleccione al menos una opción';

  @override
  String get ok => 'Aceptar';

  @override
  String get contact_information => 'Información de contacto';

  @override
  String get send_support_message => 'Enviar mensaje de soporte';

  @override
  String get title_hint => 'Título';

  @override
  String get title_cannot_be_empty => 'El título no puede estar vacío';

  @override
  String get description_hint => 'Descripción';

  @override
  String get description_cannot_be_empty =>
      'La descripción no puede estar vacía';

  @override
  String get email_invalid =>
      'Introduzca una dirección de correo electrónico válida';

  @override
  String get email_hint => 'Correo electrónico';

  @override
  String get add_attachment => 'Agregar adjunto';

  @override
  String get name_label => 'Nombre: ';

  @override
  String get email_label => 'Correo electrónico: ';

  @override
  String get contact_number_label => 'Número de contacto: ';

  @override
  String get enter_otp_delete_account => 'Ingrese OTP para eliminar su cuenta';

  @override
  String get delete_confirm_warning =>
      'Después de presionar enviar, todos sus registros de visitas se eliminarán permanentemente. ¿Desea continuar?';

  @override
  String get unexpected_error_try_again =>
      '¡Error inesperado! Por favor, inténtelo de nuevo.';

  @override
  String get gallery => 'Galería';

  @override
  String get field_is_mandatory => 'Este campo es obligatorio';

  @override
  String get current_location => 'Ubicación actual';

  @override
  String get submitted_successfully => '¡Enviado exitosamente!';

  @override
  String get failed_to_load_profile => 'Error al cargar datos del perfil';

  @override
  String get api_exception_not_implemented =>
      'Excepción de API no implementada';

  @override
  String get api_exception_request_cancelled =>
      'Solicitud de excepción de API cancelada';

  @override
  String get api_exception_internal_server_error =>
      'Excepción de API Error interno del servidor';

  @override
  String get api_exception_not_found =>
      'No se encontró ninguna excepción de API';

  @override
  String get api_exception_service_unavailable =>
      'Excepción de API: Servicio no disponible';

  @override
  String get api_exception_method_not_allowed =>
      'Método de excepción de API no permitido';

  @override
  String get api_exception_bad_request =>
      'Excepción de API Solicitud incorrecta';

  @override
  String get api_exception_unauthorized_request =>
      'Excepción de API: Solicitud no autorizada';

  @override
  String get api_exception_unexpected_error =>
      'Excepción de API Error inesperado';

  @override
  String get api_exception_request_timeout =>
      'Excepción de API: Tiempo de espera de solicitud agotado';

  @override
  String get api_exception_no_internet_connection =>
      'Excepción de API: No hay conexión a internet.';

  @override
  String get api_exception_send_timeout =>
      'Excepción de API Tiempo de espera de envío';

  @override
  String get api_exception_conflict => 'Conflicto de excepción de API';

  @override
  String get api_exception_unable_to_process_request =>
      'Excepción de API: No se puede procesar la solicitud.';

  @override
  String get api_exception_unable_to_perform_action =>
      'Excepción de API: No se puede realizar la acción.';

  @override
  String get api_exception_unauthorized_exception =>
      'Excepción de API Excepción no autorizada';

  @override
  String get api_exception_default_error =>
      'Excepción de API Error predeterminado';

  @override
  String get api_exception_format_exception => 'Excepción de formato de API';

  @override
  String get api_exception_not_acceptable => 'Excepción de API no aceptable';

  @override
  String get version_label => 'Versión';

  @override
  String get update_available_title => 'Actualización disponible';

  @override
  String get update_required_title => 'Actualización necesaria';

  @override
  String get update_available_message =>
      'Hay una nueva versión de la aplicación disponible. Actualice ahora para obtener las últimas funciones y correcciones.';

  @override
  String get update_required_message =>
      'Esta versión de la aplicación ya no es compatible. Actualice para continuar.';

  @override
  String get update_now => 'Actualizar ahora';

  @override
  String get update_later => 'Más tarde';

  @override
  String get permission_denied => 'Permiso denegado';

  @override
  String get online => 'En línea';

  @override
  String get noProductsFound => 'No se encontraron productos';

  @override
  String get failedToLoadProducts => 'No se pudieron cargar los productos.';

  @override
  String get readMore => 'Leer más';

  @override
  String get notEligibleToOrderNow =>
      'No eres elegible para hacer un pedido ahora.';

  @override
  String get productDetails => 'Detalles del producto';

  @override
  String get orderNow => 'Pedir ahora';

  @override
  String get provideAddressAndContact =>
      'Proporciona tu dirección\ny número de contacto para el pedido';

  @override
  String get streetRequired => 'Calle*';

  @override
  String get addressLineTwo => 'Dirección línea dos';

  @override
  String get townCityRequired => 'Ciudad/Localidad*';

  @override
  String get postcodeRequired => 'Código postal*';

  @override
  String get contactNoRequired => 'Número de contacto*';

  @override
  String get requiredField => 'Obligatorio';

  @override
  String get onlineStore => 'Tienda en línea';

  @override
  String get confirmDeliveryInfo => 'Confirmar información de entrega';

  @override
  String get failedToPlaceOrder =>
      'No se pudo realizar el pedido. Inténtalo de nuevo.';

  @override
  String get unexpectedErrorOccurred => 'Ocurrió un error inesperado';

  @override
  String get orderBlockWarning =>
      'Se te bloqueará durante 7 días para hacer el próximo pedido.';

  @override
  String get orderPlaced => 'Pedido realizado';

  @override
  String get orderConfirmed => 'Tu pedido está confirmado.';

  @override
  String get orderDetails => 'Detalles del pedido';

  @override
  String get productNameLabel => 'Nombre del producto:';

  @override
  String get venueNameLabel => 'Nombre del lugar:';

  @override
  String get orderDateLabel => 'Fecha del pedido:';

  @override
  String get orderTimeLabel => 'Hora del pedido:';

  @override
  String get orderBlockedSevenDays =>
      'Estás bloqueado durante 7 días\npara hacer el próximo pedido.';

  @override
  String get openingTimesText => 'Horario de apertura';

  @override
  String get openingHoursMonday => 'lunes';

  @override
  String get openingHoursTuesday => 'martes';

  @override
  String get openingHoursWednesday => 'miércoles';

  @override
  String get openingHoursThursday => 'jueves';

  @override
  String get openingHoursFriday => 'viernes';

  @override
  String get openingHoursSaturday => 'sábado';

  @override
  String get openingHoursSunday => 'domingo';

  @override
  String get openingHoursMonShort => 'lun';

  @override
  String get openingHoursTueShort => 'mar';

  @override
  String get openingHoursWedShort => 'mié';

  @override
  String get openingHoursThuShort => 'jue';

  @override
  String get openingHoursFriShort => 'vie';

  @override
  String get openingHoursSatShort => 'sáb';

  @override
  String get openingHoursSunShort => 'dom';

  @override
  String get openingHoursClosed => 'cerrado';

  @override
  String get openingHoursAnd => 'y';

  @override
  String get openingHoursTo => 'a';

  @override
  String get orderHistory => 'Historial de pedidos';

  @override
  String get noOrdersFound => 'No se encontraron pedidos';

  @override
  String get failedToLoadOrderHistory =>
      'No se pudo cargar el historial de pedidos. Inténtalo de nuevo.';

  @override
  String get orderStatusLabel => 'Estado:';

  @override
  String get deliveryAddressLabel => 'Dirección de entrega:';

  @override
  String get retry => 'Reintentar';

  @override
  String get something_went_wrong => 'Algo salió mal. Inténtalo de nuevo.';

  @override
  String get videoPlay => 'Reproducir';

  @override
  String get videoPause => 'Pausar';

  @override
  String get videoMute => 'Silenciar';

  @override
  String get videoUnmute => 'Activar sonido';

  @override
  String get videoUnavailable => 'Este vídeo no está disponible.';

  @override
  String get videoFullScreen => 'Pantalla completa';

  @override
  String get videoExitFullScreen => 'Salir de pantalla completa';

  @override
  String get videoSeek => 'Posición del vídeo';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes minutos $seconds segundos';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$position de $duration';
  }

  @override
  String get payloadTooLarge =>
      'Ese archivo es demasiado grande para enviarlo. Elija uno más pequeño.';

  @override
  String get tooManyRequests =>
      'Demasiados intentos. Espere un momento e inténtelo de nuevo.';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'Demasiados intentos. Vuelva a intentarlo en $seconds segundos.';
  }

  @override
  String get serverError =>
      'Algo ha fallado por nuestra parte. Inténtelo de nuevo en breve.';

  @override
  String get serviceUnavailable =>
      'El servicio no está disponible temporalmente. Inténtelo de nuevo en breve.';

  @override
  String get backButtonLabel => 'Atrás';

  @override
  String get scanQrCode => 'Escanear código QR';

  @override
  String get attachedImage => 'Imagen adjunta';

  @override
  String get chooseDateOfBirth => 'Elegir fecha de nacimiento';
}
