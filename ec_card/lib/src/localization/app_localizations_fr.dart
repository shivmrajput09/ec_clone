// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'application de carte électronique';

  @override
  String get login => 'Se connecter';

  @override
  String get mobile_no => 'Numéro de téléphone portable';

  @override
  String get enter_mobile_no => 'Saisissez votre numéro de téléphone portable.';

  @override
  String get new_user => 'Nouvel utilisateur ?';

  @override
  String get register_now => 'Inscrivez-vous maintenant';

  @override
  String get register => 'Registre';

  @override
  String get terms_condition => 'Conditions générales';

  @override
  String get app_terms_conditions =>
      'Conditions générales d\'utilisation des applications';

  @override
  String get accept_close => 'Accepter et fermer';

  @override
  String get register_no => 'Numéro d\'immatriculation';

  @override
  String get register_text_one =>
      'Nous devons vérifier votre numéro de téléphone portable en vous envoyant un mot de passe à usage unique.';

  @override
  String get register_text_two =>
      'Veuillez saisir votre numéro de téléphone portable sans aucun préfixe et appuyez sur le bouton Envoyer.';

  @override
  String get enable_permission => 'Activer l\'autorisation';

  @override
  String get allow_permission =>
      'Veuillez autoriser manuellement l\'opération.';

  @override
  String get dismiss => 'Rejeter';

  @override
  String get open_settings => 'Ouvrir les paramètres';

  @override
  String get unexpectedError => 'Une erreur inattendue s\'est produite.';

  @override
  String get noInternetConnection => 'Aucune connexion Internet';

  @override
  String get notFound => 'Introuvable';

  @override
  String get databaseDisconnected =>
      'L\'opération a dû être interrompue en raison d\'une déconnexion réseau.';

  @override
  String get datatbaseExpiredToken =>
      'Le jeton d\'authentification fourni a expiré.';

  @override
  String get databaseInvalidToken =>
      'Le jeton d\'authentification spécifié est invalide.';

  @override
  String get missingPhoneNumber =>
      'Le numéro de téléphone portable ne peut pas être vide.';

  @override
  String get invalidPhoneNumber =>
      'Veuillez fournir un numéro de téléphone portable valide';

  @override
  String get invalidVerificationCode => 'Code OTP invalide';

  @override
  String get missingVerificationCode => 'Code OTP invalide';

  @override
  String get codeExpired =>
      'Le code OTP a expiré. Veuillez le renvoyer pour réessayer.';

  @override
  String unknownLoginError(String code, String message) {
    return '$message';
  }

  @override
  String get registrationError =>
      'Une erreur d\'enregistrement inconnue s\'est produite.';

  @override
  String get profileImageUploadError =>
      'Impossible de télécharger une photo de profil';

  @override
  String get profileImageDeleteError =>
      'Impossible de supprimer la photo de profil';

  @override
  String get clickHereForMoreInfo =>
      'Cliquez ici pour les informations de contact';

  @override
  String unknownDatabaseError(String message) {
    return 'Erreur de base de données inconnue : $message';
  }

  @override
  String get continue_to_quiz => 'Continuer vers le quiz';

  @override
  String get continue_to_dashboard => 'Accéder au tableau de bord';

  @override
  String get cancel => 'Annuler';

  @override
  String get done => 'Fait';

  @override
  String get next => 'Suivant';

  @override
  String get verify => 'Vérifier';

  @override
  String get phone_number => 'Numéro de téléphone';

  @override
  String get phone_verification => 'Vérification téléphonique';

  @override
  String get otp => 'OTP';

  @override
  String get submit => 'Soumettre';

  @override
  String get save_details => 'Enregistrer les détails';

  @override
  String get postcode => 'Code postal';

  @override
  String get enter_postcode => 'Saisissez le code postal';

  @override
  String get dob => 'Date de naissance';

  @override
  String get dob_placeholder => 'JJ/MM/AAAA';

  @override
  String get gender => 'Genre';

  @override
  String get male => 'M';

  @override
  String get female => 'F';

  @override
  String get other => 'Autre';

  @override
  String get do_not_disclose => 'Je ne souhaite pas divulguer';

  @override
  String get access_code => 'Code d\'accès';

  @override
  String get enter_access_code => 'Saisissez le code d\'accès';

  @override
  String get please_enter_access_code => 'Veuillez saisir le code d\'accès';

  @override
  String get resend_otp => 'Renvoyer le code OTP';

  @override
  String resend_otp_countdown(String time) {
    return 'Renvoyer le code OTP dans $time';
  }

  @override
  String get change_mobile => 'Change Mobile';

  @override
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber) {
    return 'Nous avons envoyé un code OTP sur votre numéro de mobile $mobileNumber';
  }

  @override
  String get well_done => 'Bravo ! Inscription réussie';

  @override
  String get registration_text =>
      'Votre inscription est maintenant terminée. Toutefois, pour accéder à l\'application, vous devez répondre au questionnaire en suivant la procédure ci-dessous. Vous pouvez visionner des vidéos pédagogiques pour vous aider à réussir le questionnaire. Si vous avez reçu un code d\'accès, vous pouvez l\'utiliser pour passer directement à l\'application.';

  @override
  String get continue_button => 'Continuer';

  @override
  String get watch_text => 'Montre';

  @override
  String get quiz_text => 'Questionnaire';

  @override
  String get finish_text => 'Finition';

  @override
  String get congratulations => 'Félicitations';

  @override
  String get not_eligible_for_transaction => 'Non admissible à la transaction';

  @override
  String get to_scan_again => 'Scanner à nouveau !';

  @override
  String get oh_no => 'Oh non..';

  @override
  String get oops => 'Oups !';

  @override
  String get transaction_successful => 'Transaction réussie !';

  @override
  String get quiz_completion_text_one =>
      'Vous avez réussi le quiz et votre inscription au programme eC-Card a été acceptée. Vous pouvez désormais consulter la liste des établissements agréés et récupérer votre stock gratuit de préservatifs. Veuillez autoriser l\'application à accéder à votre position géographique et à votre caméra.';

  @override
  String get quiz_completion_text_two =>
      'Lors de votre visite, veuillez indiquer que vous êtes membre du programme de carte électronique de santé sexuelle et que vous souhaitez récupérer vos préservatifs gratuits. Il vous sera demandé de scanner un code QR avec l\'application pour valider la transaction avant de recevoir vos préservatifs.';

  @override
  String get quiz_completion_text_three =>
      'En cas de problème, veuillez contacter le centre de renseignements du service.';

  @override
  String get quiz_completion_text_four =>
      'Veuillez noter : les préservatifs sont fournis en quantité fixe, d’une seule taille et d’un seul type. Vous ne pouvez effectuer qu’une seule collecte par période de 7 jours.';

  @override
  String get error_in_playing_video =>
      'Une erreur s\'est produite lors de la lecture de la vidéo. Veuillez réessayer !';

  @override
  String get please_accept_the_terms_and_conditions =>
      'Veuillez accepter les conditions générales.';

  @override
  String get user_not_found => 'Utilisateur introuvable';

  @override
  String get user_disabled => 'Utilisateur désactivé';

  @override
  String get missing_phone_number => 'Numéro de téléphone manquant';

  @override
  String get invalid_phone_number => '';

  @override
  String get logout => 'Déconnexion';

  @override
  String get are_you_sure_logout =>
      'Êtes-vous sûr de vouloir vous déconnecter ?';

  @override
  String get delete_account => 'Supprimer le compte';

  @override
  String get support => 'Soutien';

  @override
  String get ivts => 'IVTS';

  @override
  String get privacy_policy => 'Politique de confidentialité';

  @override
  String get accessibility_statement => 'Déclaration d’accessibilité';

  @override
  String get language => 'Langue';

  @override
  String get selectLanguage => 'Sélectionner la langue';

  @override
  String get venues => 'Lieux';

  @override
  String get education => 'Éducation';

  @override
  String get message => 'Message';

  @override
  String get account => 'Compte';

  @override
  String get orderCompleted => 'Commande terminée';

  @override
  String get transactionDetails => 'Détails de la transaction';

  @override
  String get close => 'Fermer';

  @override
  String thankYouRecentTransaction(String date, String time) {
    return 'Merci pour votre transaction effectuée le $date $time GMT. Vous pourrez effectuer votre prochain retrait après';
  }

  @override
  String get countdownDay => 'jour';

  @override
  String get countdownHour => 'heure';

  @override
  String get countdownMin => 'min';

  @override
  String get countdownSec => 'seconde';

  @override
  String get welcomeToEcCard => 'Bienvenue sur l\'application eC-Card';

  @override
  String get registrationDisclaimer =>
      'Veuillez noter que cette application ne fournit pas de contraception d\'urgence. Si vous en avez besoin, veuillez contacter directement votre pharmacie ou un service de santé sexuelle.';

  @override
  String get videos => 'Vidéos';

  @override
  String get documents => 'Documents';

  @override
  String get weblinks => 'Liens web';

  @override
  String get no_weblinks => 'Aucun lien éducatif trouvé';

  @override
  String get weblink_opens_in_browser => 'S\'ouvre dans le navigateur';

  @override
  String sizeLabel(String size) {
    return 'Taille : $size';
  }

  @override
  String viewsCount(String count) {
    return '$count vues';
  }

  @override
  String get ecCard => 'eC-Card';

  @override
  String get stores => 'Magasins';

  @override
  String get kiosk => 'Kiosque';

  @override
  String get search => 'Recherche';

  @override
  String get addressLabel => 'Adresse: ';

  @override
  String get notesLabel => 'Remarques :';

  @override
  String get directions => 'Instructions';

  @override
  String get noKiosksAvailable =>
      'Aucun kiosque n\'est actuellement disponible.';

  @override
  String get noNotificationsYet => 'Aucune notification pour le moment !';

  @override
  String get selectProduct => 'Sélectionner un produit';

  @override
  String get noActiveProducts =>
      'Aucun produit actif n\'a été trouvé dans ce magasin.';

  @override
  String get productDescription => 'Description du produit';

  @override
  String get productSelectionWarning =>
      'Veuillez vous assurer de faire le bon choix, car un seul choix est autorisé par période de commande.';

  @override
  String get confirmSelection => 'Confirmer la sélection';

  @override
  String get productDescriptionLabel => 'Description du produit :';

  @override
  String get back => 'Dos';

  @override
  String get confirm => 'Confirmer';

  @override
  String get skip => 'Sauter';

  @override
  String get settings => 'Paramètres';

  @override
  String get systemTheme => 'Thème système';

  @override
  String get lightTheme => 'Thème clair';

  @override
  String get darkTheme => 'Thème sombre';

  @override
  String get transactions => 'Transactions';

  @override
  String get allowUnlimitedTransactions =>
      'Autoriser un nombre illimité de transactions ?';

  @override
  String get delete => 'Supprimer';

  @override
  String get delete_account_warning =>
      'Une fois votre compte supprimé, tous vos dossiers de visites seront définitivement supprimés';

  @override
  String get additional_registration_questions =>
      'Questions d\'inscription supplémentaires';

  @override
  String submission_failed(String error) {
    return 'Échec de la soumission : $error';
  }

  @override
  String get no_questions_available => 'Aucune question disponible.';

  @override
  String get select_option => 'Sélectionner une option';

  @override
  String get please_select_option => 'Veuillez sélectionner une option';

  @override
  String get select_options => 'Sélectionner des options';

  @override
  String get please_select_at_least_one =>
      'Veuillez sélectionner au moins une option';

  @override
  String get ok => 'OK';

  @override
  String get contact_information => 'Coordonnées';

  @override
  String get send_support_message => 'Envoyer un message de support';

  @override
  String get title_hint => 'Titre';

  @override
  String get title_cannot_be_empty => 'Le titre ne peut pas être vide';

  @override
  String get description_hint => 'Description';

  @override
  String get description_cannot_be_empty =>
      'La description ne peut pas être vide';

  @override
  String get email_invalid => 'Veuillez saisir une adresse e-mail valide';

  @override
  String get email_hint => 'E-mail';

  @override
  String get add_attachment => 'Ajouter une pièce jointe';

  @override
  String get name_label => 'Nom : ';

  @override
  String get email_label => 'E-mail : ';

  @override
  String get contact_number_label => 'Numéro de contact : ';

  @override
  String get enter_otp_delete_account =>
      'Entrez le OTP pour supprimer votre compte';

  @override
  String get delete_confirm_warning =>
      'Après avoir appuyé sur soumettre, tous vos dossiers de visites seront définitivement supprimés. Souhaitez-vous continuer ?';

  @override
  String get unexpected_error_try_again =>
      'Erreur inattendue ! Veuillez réessayer.';

  @override
  String get gallery => 'Galerie';

  @override
  String get field_is_mandatory => 'Ce champ est obligatoire';

  @override
  String get current_location => 'Emplacement actuel';

  @override
  String get submitted_successfully => 'Soumis avec succès !';

  @override
  String get failed_to_load_profile =>
      'Échec du chargement des données du profil';

  @override
  String get api_exception_not_implemented => 'Exception API non implémentée';

  @override
  String get api_exception_request_cancelled =>
      'Exception API : requête annulée';

  @override
  String get api_exception_internal_server_error =>
      'Exception API : Erreur interne du serveur';

  @override
  String get api_exception_not_found => 'Exception API introuvable';

  @override
  String get api_exception_service_unavailable =>
      'Service d\'exception API indisponible';

  @override
  String get api_exception_method_not_allowed =>
      'Exception API : Méthode non autorisée';

  @override
  String get api_exception_bad_request => 'Exception API : Mauvaise requête';

  @override
  String get api_exception_unauthorized_request =>
      'Exception API : requête non autorisée';

  @override
  String get api_exception_unexpected_error =>
      'Exception API : Erreur inattendue';

  @override
  String get api_exception_request_timeout =>
      'Délai d\'attente de la requête d\'exception API';

  @override
  String get api_exception_no_internet_connection =>
      'Exception API : Aucune connexion Internet';

  @override
  String get api_exception_send_timeout =>
      'Exception API : Délai d\'envoi dépassé';

  @override
  String get api_exception_conflict => 'Conflit d\'exception d\'API';

  @override
  String get api_exception_unable_to_process_request =>
      'Exception API : Impossible de traiter la requête';

  @override
  String get api_exception_unable_to_perform_action =>
      'Exception API : Impossible d\'effectuer l\'action';

  @override
  String get api_exception_unauthorized_exception =>
      'Exception API : Exception non autorisée';

  @override
  String get api_exception_default_error => 'Exception API Erreur par défaut';

  @override
  String get api_exception_format_exception => 'Exception de format d\'API';

  @override
  String get api_exception_not_acceptable => 'Exception API non acceptable';

  @override
  String get version_label => 'Version';

  @override
  String get update_available_title => 'Mise à jour disponible';

  @override
  String get update_required_title => 'Mise à jour requise';

  @override
  String get update_available_message =>
      'Une nouvelle version de l\'application est disponible. Mettez-la à jour maintenant pour profiter des dernières fonctionnalités et corrections.';

  @override
  String get update_required_message =>
      'Cette version de l\'application n\'est plus prise en charge. Veuillez la mettre à jour pour continuer.';

  @override
  String get update_now => 'Mettre à jour';

  @override
  String get update_later => 'Plus tard';

  @override
  String get permission_denied => 'Accès refusé';

  @override
  String get online => 'En ligne';

  @override
  String get noProductsFound => 'Aucun produit trouvé';

  @override
  String get failedToLoadProducts => 'Impossible de charger les produits.';

  @override
  String get readMore => 'Lire la suite';

  @override
  String get notEligibleToOrderNow =>
      'Vous ne pouvez pas commander pour le moment.';

  @override
  String get productDetails => 'Détails du produit';

  @override
  String get orderNow => 'Commander maintenant';

  @override
  String get provideAddressAndContact =>
      'Veuillez fournir votre adresse\net votre numéro de contact pour commander';

  @override
  String get streetRequired => 'Rue*';

  @override
  String get addressLineTwo => 'Adresse ligne deux';

  @override
  String get townCityRequired => 'Ville*';

  @override
  String get postcodeRequired => 'Code postal*';

  @override
  String get contactNoRequired => 'Numéro de contact*';

  @override
  String get requiredField => 'Obligatoire';

  @override
  String get onlineStore => 'Boutique en ligne';

  @override
  String get confirmDeliveryInfo => 'Confirmer les informations de livraison';

  @override
  String get failedToPlaceOrder =>
      'Impossible de passer la commande. Veuillez réessayer.';

  @override
  String get unexpectedErrorOccurred => 'Une erreur inattendue est survenue';

  @override
  String get orderBlockWarning =>
      'Vous serez bloqué pendant 7 jours avant de passer une nouvelle commande.';

  @override
  String get orderPlaced => 'Commande passée';

  @override
  String get orderConfirmed => 'Votre commande est maintenant confirmée.';

  @override
  String get orderDetails => 'Détails de la commande';

  @override
  String get productNameLabel => 'Nom du produit :';

  @override
  String get venueNameLabel => 'Nom du lieu :';

  @override
  String get orderDateLabel => 'Date de commande :';

  @override
  String get orderTimeLabel => 'Heure de commande :';

  @override
  String get orderBlockedSevenDays =>
      'Vous êtes bloqué pendant 7 jours\navant de passer une nouvelle commande.';

  @override
  String get openingTimesText => 'Horaires d’ouverture';

  @override
  String get openingHoursMonday => 'lundi';

  @override
  String get openingHoursTuesday => 'mardi';

  @override
  String get openingHoursWednesday => 'mercredi';

  @override
  String get openingHoursThursday => 'jeudi';

  @override
  String get openingHoursFriday => 'vendredi';

  @override
  String get openingHoursSaturday => 'samedi';

  @override
  String get openingHoursSunday => 'dimanche';

  @override
  String get openingHoursMonShort => 'lun';

  @override
  String get openingHoursTueShort => 'mar';

  @override
  String get openingHoursWedShort => 'mer';

  @override
  String get openingHoursThuShort => 'jeu';

  @override
  String get openingHoursFriShort => 'ven';

  @override
  String get openingHoursSatShort => 'sam';

  @override
  String get openingHoursSunShort => 'dim';

  @override
  String get openingHoursClosed => 'fermé';

  @override
  String get openingHoursAnd => 'et';

  @override
  String get openingHoursTo => 'à';

  @override
  String get orderHistory => 'Historique des commandes';

  @override
  String get noOrdersFound => 'Aucune commande trouvée';

  @override
  String get failedToLoadOrderHistory =>
      'Impossible de charger l’historique des commandes. Veuillez réessayer.';

  @override
  String get orderStatusLabel => 'Statut :';

  @override
  String get deliveryAddressLabel => 'Adresse de livraison :';

  @override
  String get retry => 'Réessayer';

  @override
  String get something_went_wrong =>
      'Une erreur s’est produite. Veuillez réessayer.';

  @override
  String get videoPlay => 'Lire';

  @override
  String get videoPause => 'Pause';

  @override
  String get videoMute => 'Couper le son';

  @override
  String get videoUnmute => 'Rétablir le son';

  @override
  String get videoUnavailable => 'Cette vidéo n\'est pas disponible.';

  @override
  String get videoFullScreen => 'Plein écran';

  @override
  String get videoExitFullScreen => 'Quitter le plein écran';

  @override
  String get videoSeek => 'Position de la vidéo';

  @override
  String videoTimeSpoken(int minutes, int seconds) {
    return '$minutes minutes $seconds secondes';
  }

  @override
  String videoProgressSpoken(String position, String duration) {
    return '$position sur $duration';
  }

  @override
  String get payloadTooLarge =>
      'Ce fichier est trop volumineux pour être envoyé. Veuillez en choisir un plus petit.';

  @override
  String get tooManyRequests =>
      'Trop de tentatives. Veuillez patienter un instant et réessayer.';

  @override
  String tooManyRequestsIn(int seconds) {
    return 'Trop de tentatives. Veuillez réessayer dans $seconds secondes.';
  }

  @override
  String get serverError =>
      'Un problème est survenu de notre côté. Veuillez réessayer sous peu.';

  @override
  String get serviceUnavailable =>
      'Le service est temporairement indisponible. Veuillez réessayer sous peu.';

  @override
  String get backButtonLabel => 'Retour';

  @override
  String get scanQrCode => 'Scanner le code QR';

  @override
  String get attachedImage => 'Image jointe';

  @override
  String get chooseDateOfBirth => 'Choisir la date de naissance';
}
