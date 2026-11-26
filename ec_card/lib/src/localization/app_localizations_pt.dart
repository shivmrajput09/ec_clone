// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'aplicativo ec_card';

  @override
  String get login => 'Conecte-se';

  @override
  String get mobile_no => 'Número de celular';

  @override
  String get enter_mobile_no => 'Digite o número do celular.';

  @override
  String get new_user => 'Novo usuário?';

  @override
  String get register_now => 'Inscreva-se agora';

  @override
  String get register => 'Cadastre-se';

  @override
  String get terms_condition => 'Termos e Condições';

  @override
  String get app_terms_conditions => 'Termos e Condições do Aplicativo';

  @override
  String get accept_close => 'Aceitar e fechar';

  @override
  String get register_no => 'Número de registro';

  @override
  String get register_text_one =>
      'Precisamos verificar seu número de celular enviando uma senha de uso único.';

  @override
  String get register_text_two =>
      'Por favor, digite seu número de celular sem nenhum prefixo e pressione o botão enviar.';

  @override
  String get enable_permission => 'Habilitar permissão';

  @override
  String get allow_permission =>
      'Por favor, conceda permissão manualmente para concluir a operação.';

  @override
  String get dismiss => 'Liberar';

  @override
  String get open_settings => 'Abra as configurações';

  @override
  String get unexpectedError => 'Ocorreu um erro inesperado.';

  @override
  String get noInternetConnection => 'Sem conexão com a internet';

  @override
  String get notFound => 'Não encontrado';

  @override
  String get databaseDisconnected =>
      'A operação teve que ser abortada devido a uma desconexão de rede.';

  @override
  String get datatbaseExpiredToken =>
      'O token de autenticação fornecido expirou.';

  @override
  String get databaseInvalidToken =>
      'O token de autenticação especificado é inválido.';

  @override
  String get missingPhoneNumber => 'O número de celular não pode estar vazio.';

  @override
  String get invalidPhoneNumber =>
      'Por favor, forneça um número de celular válido.';

  @override
  String get invalidVerificationCode => 'OTP inválido';

  @override
  String get missingVerificationCode => 'OTP inválido';

  @override
  String get codeExpired =>
      'O código OTP expirou. Por favor, envie novamente para tentar outra vez.';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError => 'Ocorreu um erro de registro desconhecido.';

  @override
  String get profileImageUploadError =>
      'Não foi possível carregar a foto de perfil.';

  @override
  String get profileImageDeleteError =>
      'Não foi possível excluir a foto do perfil.';

  @override
  String get clickHereForMoreInfo =>
      'Clique aqui para obter informações de contato.';

  @override
  String unknownDatabaseError(String message) {
    return 'Erro desconhecido no banco de dados: $message';
  }

  @override
  String get continue_to_quiz => 'Continuar para o Quiz';

  @override
  String get continue_to_dashboard => 'Continuar para o Painel de Controle';

  @override
  String get cancel => 'Cancelar';

  @override
  String get done => 'Feito';

  @override
  String get next => 'Próximo';

  @override
  String get verify => 'Verificar';

  @override
  String get phone_number => 'Número de telefone';

  @override
  String get phone_verification => 'Verificação por telefone';

  @override
  String get otp => 'OTP';

  @override
  String get submit => 'Enviar';

  @override
  String get save_details => 'Salvar detalhes';

  @override
  String get postcode => 'código postal';

  @override
  String get enter_postcode => 'Digite o código postal';

  @override
  String get dob => 'Data de nascimento';

  @override
  String get dob_placeholder => 'DD/MM/AAAA';

  @override
  String get gender => 'Gênero';

  @override
  String get male => 'M';

  @override
  String get female => 'F';

  @override
  String get other => 'Outro';

  @override
  String get do_not_disclose => 'Não desejo divulgar';

  @override
  String get access_code => 'Código de acesso';

  @override
  String get enter_access_code => 'Insira o código de acesso';

  @override
  String get please_enter_access_code =>
      'Por favor, insira o código de acesso.';

  @override
  String get resend_otp => 'Reenviar OTP';

  @override
  String resend_otp_countdown(String time) {
    return 'Reenviar OTP em $time';
  }

  @override
  String get change_mobile => 'Alterar celular';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'Enviamos um código OTP para o seu número de celular $mobileNumber.';
  }

  @override
  String get well_done => 'Muito bem! Cadastro concluído com sucesso.';

  @override
  String get registration_text =>
      'Seu cadastro está completo, porém, para acessar o aplicativo, você precisa concluir o questionário seguindo o processo abaixo. Você pode assistir a vídeos educativos para ajudar na sua aprovação. Se você forneceu um código de acesso, pode usá-lo para pular o questionário.';

  @override
  String get continue_button => 'Continuar';

  @override
  String get watch_text => 'Assistir';

  @override
  String get quiz_text => 'Questionário';

  @override
  String get finish_text => 'Terminar';

  @override
  String get congratulations => 'Parabéns';

  @override
  String get not_eligible_for_transaction => 'Não elegível para transação';

  @override
  String get to_scan_again => 'Para digitalizar novamente!';

  @override
  String get oh_no => 'Oh não..';

  @override
  String get oops => 'Ops!';

  @override
  String get transaction_successful => 'Transação concluída com sucesso!';

  @override
  String get quiz_completion_text_one =>
      'Você concluiu o questionário com sucesso e foi aceito no programa eC-Card. Agora você poderá acessar nossa lista de locais aprovados e retirar seu suprimento gratuito de preservativos. Certifique-se de que o aplicativo tenha acesso aos serviços de localização e à sua câmera.';

  @override
  String get quiz_completion_text_two =>
      'Ao visitar o local, informe que você é membro do programa Sexual Health eC-Card e que deseja retirar seus preservativos gratuitos. Você deverá escanear um código QR usando o aplicativo para aprovar a transação antes de receber seus preservativos.';

  @override
  String get quiz_completion_text_three =>
      'Se tiver algum problema, entre em contato com o centro de inteligência de serviço.';

  @override
  String get quiz_completion_text_four =>
      'Atenção: Os preservativos são fornecidos em quantidade fixa, tamanho e tipo únicos. Você só pode fazer uma retirada a cada 7 dias.';

  @override
  String get error_in_playing_video =>
      'Ocorreu um erro ao reproduzir o vídeo. Tente novamente!';

  @override
  String get please_accept_the_terms_and_conditions =>
      'Por favor, aceite os termos e condições.';

  @override
  String get user_not_found => 'Usuário não encontrado';

  @override
  String get user_disabled => 'Usuário desativado';

  @override
  String get missing_phone_number => 'Número de telefone desaparecido';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'Sair';

  @override
  String get are_you_sure_logout => 'Tem certeza de que deseja sair?';

  @override
  String get delete_account => 'Excluir conta';

  @override
  String get support => 'Apoiar';

  @override
  String get ivts => 'IVTS';

  @override
  String get privacy_policy => 'Política de Privacidade';

  @override
  String get accessibility_statement => 'Declaração de acessibilidade';

  @override
  String get language => 'Linguagem';

  @override
  String get selectLanguage => 'Selecione o idioma';

  @override
  String get venues => 'Locais';

  @override
  String get education => 'Educação';

  @override
  String get message => 'Mensagem';

  @override
  String get account => 'Conta';

  @override
  String get orderCompleted => 'Pedido concluído';

  @override
  String get transactionDetails => 'Detalhes da transação';

  @override
  String get close => 'Fechar';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return 'Obrigado pela sua recente transação em $date $time GMT. Você poderá fazer sua próxima retirada após';
  }

  @override
  String get countdownDay => 'dia';

  @override
  String get countdownHour => 'hora';

  @override
  String get countdownMin => 'min';

  @override
  String get countdownSec => 'seg';

  @override
  String get welcomeToEcCard => 'Bem-vindo ao aplicativo eC-Card.';

  @override
  String get registrationDisclaimer =>
      'Atenção: este aplicativo não se destina a contraceptivos de emergência. Caso precise deles, entre em contato diretamente com sua farmácia local ou serviço de saúde sexual.';

  @override
  String get videos => 'Vídeos';

  @override
  String get documents => 'Documentos';

  @override
  String get weblinks => 'Ligações web';

  @override
  String get no_weblinks => 'Não foram encontradas ligações educativas';

  @override
  String get weblink_opens_in_browser => 'Abre no navegador';

  @override
  String sizeLabel(String size) {
    return 'Tamanho: $size';
  }

  @override
  String viewsCount(String count) {
    return '$count visualizações';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'Lojas';

  @override
  String get kiosk => 'Quiosque';

  @override
  String get search => 'Procurar';

  @override
  String get addressLabel => 'Endereço: ';

  @override
  String get notesLabel => 'Notas:';

  @override
  String get directions => 'Instruções';

  @override
  String get noKiosksAvailable => 'Atualmente não há quiosques disponíveis.';

  @override
  String get noNotificationsYet => 'Ainda não há notificações!';

  @override
  String get selectProduct => 'Selecione o produto';

  @override
  String get noActiveProducts => 'Nenhum produto ativo encontrado nesta loja.';

  @override
  String get productDescription => 'Descrição do produto';

  @override
  String get productSelectionWarning =>
      'Certifique-se de fazer a seleção correta, pois apenas uma seleção é permitida por período de pedido.';

  @override
  String get confirmSelection => 'Confirmar seleção';

  @override
  String get productDescriptionLabel => 'Descrição do produto:';

  @override
  String get back => 'Voltar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get skip => 'Pular';

  @override
  String get settings => 'Configurações';

  @override
  String get systemTheme => 'Tema do sistema';

  @override
  String get lightTheme => 'Tema de luz';

  @override
  String get darkTheme => 'Tema escuro';

  @override
  String get transactions => 'Transações';

  @override
  String get allowUnlimitedTransactions => 'Permitir transações ilimitadas?';

  @override
  String get delete => 'Eliminar';

  @override
  String get delete_account_warning =>
      'Depois de eliminar a sua conta, todos os seus registos de visitas serão permanentemente eliminados';

  @override
  String get additional_registration_questions =>
      'Perguntas de registo adicionais';

  @override
  String submission_failed(String error) {
    return 'Falha no envio: $error';
  }

  @override
  String get no_questions_available => 'Não há perguntas disponíveis.';

  @override
  String get select_option => 'Selecionar opção';

  @override
  String get please_select_option => 'Por favor selecione uma opção';

  @override
  String get select_options => 'Selecionar opções';

  @override
  String get please_select_at_least_one =>
      'Por favor selecione pelo menos uma opção';

  @override
  String get ok => 'OK';

  @override
  String get contact_information => 'Informações de contacto';

  @override
  String get send_support_message => 'Enviar mensagem de suporte';

  @override
  String get title_hint => 'Título';

  @override
  String get title_cannot_be_empty => 'O título não pode estar vazio';

  @override
  String get description_hint => 'Descrição';

  @override
  String get description_cannot_be_empty => 'A descrição não pode estar vazia';

  @override
  String get email_invalid => 'Insira um endereço de e-mail válido';

  @override
  String get email_hint => 'E-mail';

  @override
  String get add_attachment => 'Adicionar anexo';

  @override
  String get name_label => 'Nome: ';

  @override
  String get email_label => 'E-mail: ';

  @override
  String get contact_number_label => 'Número de contacto: ';

  @override
  String get enter_otp_delete_account =>
      'Introduza o OTP para eliminar a sua conta';

  @override
  String get delete_confirm_warning =>
      'Depois de pressionar enviar, todos os seus registos de visitas serão permanentemente eliminados. Deseja continuar?';

  @override
  String get unexpected_error_try_again =>
      'Erro inesperado! Por favor, tente novamente.';

  @override
  String get gallery => 'Galeria';

  @override
  String get field_is_mandatory => 'Este campo é obrigatório';

  @override
  String get current_location => 'Localização atual';

  @override
  String get submitted_successfully => 'Enviado com sucesso!';

  @override
  String get failed_to_load_profile => 'Falha ao carregar dados do perfil';

  @override
  String get api_exception_not_implemented => 'Exceção de API não implementada';

  @override
  String get api_exception_request_cancelled =>
      'Exceção da API: Solicitação cancelada';

  @override
  String get api_exception_internal_server_error =>
      'Exceção de API Erro interno do servidor';

  @override
  String get api_exception_not_found => 'Exceção de API não encontrada';

  @override
  String get api_exception_service_unavailable =>
      'Serviço de exceção da API indisponível';

  @override
  String get api_exception_method_not_allowed =>
      'Método de exceção da API não permitido';

  @override
  String get api_exception_bad_request =>
      'Exceção de API - Solicitação Inválida';

  @override
  String get api_exception_unauthorized_request =>
      'Exceção da API: Solicitação não autorizada';

  @override
  String get api_exception_unexpected_error =>
      'Exceção de API - Erro inesperado';

  @override
  String get api_exception_request_timeout =>
      'Exceção da API - Tempo limite da solicitação';

  @override
  String get api_exception_no_internet_connection =>
      'Exceção da API: Sem conexão com a internet';

  @override
  String get api_exception_send_timeout =>
      'Exceção da API - Tempo limite de envio';

  @override
  String get api_exception_conflict => 'Conflito de exceção da API';

  @override
  String get api_exception_unable_to_process_request =>
      'Exceção da API: Não foi possível processar a solicitação.';

  @override
  String get api_exception_unable_to_perform_action =>
      'Exceção da API: Não foi possível executar a ação.';

  @override
  String get api_exception_unauthorized_exception =>
      'Exceção de API: Exceção não autorizada';

  @override
  String get api_exception_default_error => 'Erro padrão de exceção da API';

  @override
  String get api_exception_format_exception =>
      'Exceção de formato de exceção da API';

  @override
  String get api_exception_not_acceptable => 'Exceção de API não aceitável';

  @override
  String get version_label => 'Versão';

  @override
  String get update_available_title => 'Atualização disponível';

  @override
  String get update_required_title => 'Atualização necessária';

  @override
  String get update_available_message =>
      'Está disponível uma nova versão da aplicação. Atualize agora para obter as funcionalidades e correções mais recentes.';

  @override
  String get update_required_message =>
      'Esta versão da aplicação já não é suportada. Atualize para continuar.';

  @override
  String get update_now => 'Atualizar agora';

  @override
  String get update_later => 'Mais tarde';

  @override
  String get permission_denied => 'Permissão negada';

  @override
  String get online => 'Em linha';

  @override
  String get noProductsFound => 'Nenhum produto encontrado';

  @override
  String get failedToLoadProducts => 'Falha ao carregar produtos.';

  @override
  String get readMore => 'Ler mais';

  @override
  String get notEligibleToOrderNow =>
      'Você não está elegível para fazer um pedido agora.';

  @override
  String get productDetails => 'Detalhes do produto';

  @override
  String get orderNow => 'Pedir agora';

  @override
  String get provideAddressAndContact =>
      'Forneça seu endereço\ne número de contato para o pedido';

  @override
  String get streetRequired => 'Rua*';

  @override
  String get addressLineTwo => 'Endereço linha dois';

  @override
  String get townCityRequired => 'Cidade*';

  @override
  String get postcodeRequired => 'Código postal*';

  @override
  String get contactNoRequired => 'Número de contato*';

  @override
  String get requiredField => 'Obrigatório';

  @override
  String get onlineStore => 'Loja online';

  @override
  String get confirmDeliveryInfo => 'Confirmar informações de entrega';

  @override
  String get failedToPlaceOrder => 'Falha ao fazer o pedido. Tente novamente.';

  @override
  String get unexpectedErrorOccurred => 'Ocorreu um erro inesperado';

  @override
  String get orderBlockWarning =>
      'Você será bloqueado por 7 dias para fazer o próximo pedido.';

  @override
  String get orderPlaced => 'Pedido realizado';

  @override
  String get orderConfirmed => 'Seu pedido foi confirmado.';

  @override
  String get orderDetails => 'Detalhes do pedido';

  @override
  String get productNameLabel => 'Nome do produto:';

  @override
  String get venueNameLabel => 'Nome do local:';

  @override
  String get orderDateLabel => 'Data do pedido:';

  @override
  String get orderTimeLabel => 'Hora do pedido:';

  @override
  String get orderBlockedSevenDays =>
      'Você está bloqueado por 7 dias\npara fazer o próximo pedido.';

  @override
  String get openingTimesText => 'Horário de funcionamento';

  @override
  String get openingHoursMonday => 'segunda-feira';

  @override
  String get openingHoursTuesday => 'terça-feira';

  @override
  String get openingHoursWednesday => 'quarta-feira';

  @override
  String get openingHoursThursday => 'quinta-feira';

  @override
  String get openingHoursFriday => 'sexta-feira';

  @override
  String get openingHoursSaturday => 'sábado';

  @override
  String get openingHoursSunday => 'domingo';

  @override
  String get openingHoursMonShort => 'seg';

  @override
  String get openingHoursTueShort => 'ter';

  @override
  String get openingHoursWedShort => 'qua';

  @override
  String get openingHoursThuShort => 'qui';

  @override
  String get openingHoursFriShort => 'sex';

  @override
  String get openingHoursSatShort => 'sáb';

  @override
  String get openingHoursSunShort => 'dom';

  @override
  String get openingHoursClosed => 'fechado';

  @override
  String get openingHoursAnd => 'e';

  @override
  String get openingHoursTo => 'a';

  @override
  String get orderHistory => 'Histórico de pedidos';

  @override
  String get noOrdersFound => 'Nenhum pedido encontrado';

  @override
  String get failedToLoadOrderHistory =>
      'Não foi possível carregar o histórico de pedidos. Tente novamente.';

  @override
  String get orderStatusLabel => 'Estado:';

  @override
  String get deliveryAddressLabel => 'Endereço de entrega:';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get something_went_wrong => 'Algo deu errado. Tente novamente.';

  @override
  String get videoPlay => 'Reproduzir';

  @override
  String get videoPause => 'Pausar';

  @override
  String get videoMute => 'Silenciar';

  @override
  String get videoUnmute => 'Ativar som';

  @override
  String get videoUnavailable => 'Este vídeo não está disponível.';

  @override
  String get videoFullScreen => 'Ecrã inteiro';

  @override
  String get videoExitFullScreen => 'Sair do ecrã inteiro';

  @override
  String get videoSeek => 'Posição do vídeo';

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
      'Esse ficheiro é demasiado grande para enviar. Escolha um mais pequeno.';

  @override
  String get tooManyRequests =>
      'Demasiadas tentativas. Aguarde um momento e tente novamente.';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'Demasiadas tentativas. Tente novamente dentro de $seconds segundos.';
  }

  @override
  String get serverError =>
      'Algo correu mal do nosso lado. Tente novamente dentro de momentos.';

  @override
  String get serviceUnavailable =>
      'O serviço está temporariamente indisponível. Tente novamente dentro de momentos.';

  @override
  String get backButtonLabel => 'Voltar';

  @override
  String get scanQrCode => 'Digitalizar código QR';

  @override
  String get attachedImage => 'Imagem anexada';

  @override
  String get chooseDateOfBirth => 'Escolher data de nascimento';
}
