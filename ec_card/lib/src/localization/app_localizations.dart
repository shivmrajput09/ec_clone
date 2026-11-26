import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_cy.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gd.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_so.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ur.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('cy'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('gd'),
    Locale('gu'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('so'),
    Locale('tr'),
    Locale('ur')
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'ec_card_app'**
  String get appTitle;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get login;

  /// No description provided for @mobile_no.
  ///
  /// In en, this message translates to:
  /// **'Mobile Number'**
  String get mobile_no;

  /// No description provided for @enter_mobile_no.
  ///
  /// In en, this message translates to:
  /// **'Enter Mobile Number'**
  String get enter_mobile_no;

  /// No description provided for @new_user.
  ///
  /// In en, this message translates to:
  /// **'New User?'**
  String get new_user;

  /// No description provided for @register_now.
  ///
  /// In en, this message translates to:
  /// **' Register Now'**
  String get register_now;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @terms_condition.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get terms_condition;

  /// No description provided for @app_terms_conditions.
  ///
  /// In en, this message translates to:
  /// **'Apps Terms & Conditions'**
  String get app_terms_conditions;

  /// No description provided for @accept_close.
  ///
  /// In en, this message translates to:
  /// **'Accept & Close'**
  String get accept_close;

  /// No description provided for @register_no.
  ///
  /// In en, this message translates to:
  /// **'Register Number'**
  String get register_no;

  /// No description provided for @register_text_one.
  ///
  /// In en, this message translates to:
  /// **'We need to verify your mobile number by sending you a one Time Password.'**
  String get register_text_one;

  /// No description provided for @register_text_two.
  ///
  /// In en, this message translates to:
  /// **'Please enter your Mobile No. without any prefixes and press the Register button.'**
  String get register_text_two;

  /// No description provided for @enable_permission.
  ///
  /// In en, this message translates to:
  /// **'Enable Permission'**
  String get enable_permission;

  /// No description provided for @allow_permission.
  ///
  /// In en, this message translates to:
  /// **'Please allow permission manually to complete the operation.'**
  String get allow_permission;

  /// No description provided for @dismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismiss;

  /// No description provided for @open_settings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get open_settings;

  /// No description provided for @unexpectedError.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occured'**
  String get unexpectedError;

  /// No description provided for @noInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'No Internet Connection'**
  String get noInternetConnection;

  /// No description provided for @notFound.
  ///
  /// In en, this message translates to:
  /// **'Not Found'**
  String get notFound;

  /// No description provided for @databaseDisconnected.
  ///
  /// In en, this message translates to:
  /// **'The operation had to be aborted due to a network disconnect'**
  String get databaseDisconnected;

  /// No description provided for @datatbaseExpiredToken.
  ///
  /// In en, this message translates to:
  /// **'The supplied auth token has expired'**
  String get datatbaseExpiredToken;

  /// No description provided for @databaseInvalidToken.
  ///
  /// In en, this message translates to:
  /// **'The specified authentication token is invalid'**
  String get databaseInvalidToken;

  /// No description provided for @missingPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile number cannot be empty'**
  String get missingPhoneNumber;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please provide a valid mobile number'**
  String get invalidPhoneNumber;

  /// No description provided for @invalidVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP'**
  String get invalidVerificationCode;

  /// No description provided for @missingVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP'**
  String get missingVerificationCode;

  /// No description provided for @codeExpired.
  ///
  /// In en, this message translates to:
  /// **'OTP has expired. Please resend to try again.'**
  String get codeExpired;

  /// No description provided for @unknownLoginError.
  ///
  /// In en, this message translates to:
  /// **'{message}'**
  String unknownLoginError(String code, String message);

  /// No description provided for @registrationError.
  ///
  /// In en, this message translates to:
  /// **'An unknown registration error occured'**
  String get registrationError;

  /// No description provided for @profileImageUploadError.
  ///
  /// In en, this message translates to:
  /// **'Unable to upload profile picture'**
  String get profileImageUploadError;

  /// No description provided for @profileImageDeleteError.
  ///
  /// In en, this message translates to:
  /// **'Unable to delete profile picture'**
  String get profileImageDeleteError;

  /// No description provided for @clickHereForMoreInfo.
  ///
  /// In en, this message translates to:
  /// **'click here for contact info'**
  String get clickHereForMoreInfo;

  /// No description provided for @unknownDatabaseError.
  ///
  /// In en, this message translates to:
  /// **'An unknown Databse Error: {message}'**
  String unknownDatabaseError(String message);

  /// No description provided for @continue_to_quiz.
  ///
  /// In en, this message translates to:
  /// **'Continue to Quiz'**
  String get continue_to_quiz;

  /// No description provided for @continue_to_dashboard.
  ///
  /// In en, this message translates to:
  /// **'Continue to Dashboard'**
  String get continue_to_dashboard;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @phone_verification.
  ///
  /// In en, this message translates to:
  /// **'Phone Verification'**
  String get phone_verification;

  /// No description provided for @otp.
  ///
  /// In en, this message translates to:
  /// **'OTP'**
  String get otp;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @save_details.
  ///
  /// In en, this message translates to:
  /// **'Save Details'**
  String get save_details;

  /// No description provided for @postcode.
  ///
  /// In en, this message translates to:
  /// **'Postcode'**
  String get postcode;

  /// No description provided for @enter_postcode.
  ///
  /// In en, this message translates to:
  /// **'Enter Postcode'**
  String get enter_postcode;

  /// No description provided for @dob.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dob;

  /// No description provided for @dob_placeholder.
  ///
  /// In en, this message translates to:
  /// **'DD /MM /YYYY'**
  String get dob_placeholder;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'M'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'F'**
  String get female;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @do_not_disclose.
  ///
  /// In en, this message translates to:
  /// **'Do not wish to disclose'**
  String get do_not_disclose;

  /// No description provided for @access_code.
  ///
  /// In en, this message translates to:
  /// **'Access Code'**
  String get access_code;

  /// No description provided for @enter_access_code.
  ///
  /// In en, this message translates to:
  /// **'Enter Access Code'**
  String get enter_access_code;

  /// No description provided for @please_enter_access_code.
  ///
  /// In en, this message translates to:
  /// **'Please Enter Access Code'**
  String get please_enter_access_code;

  /// No description provided for @resend_otp.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP'**
  String get resend_otp;

  /// Shown on the OTP screen while the resend button is on cooldown
  ///
  /// In en, this message translates to:
  /// **'Resend OTP in {time}'**
  String resend_otp_countdown(String time);

  /// No description provided for @change_mobile.
  ///
  /// In en, this message translates to:
  /// **'Change Mobile'**
  String get change_mobile;

  /// No description provided for @otp_has_been_sent_to_the_mobile_number.
  ///
  /// In en, this message translates to:
  /// **'We have sent an OTP to your Mobile No. {mobileNumber}'**
  String otp_has_been_sent_to_the_mobile_number(String mobileNumber);

  /// No description provided for @well_done.
  ///
  /// In en, this message translates to:
  /// **'Well Done! Registration Successful'**
  String get well_done;

  /// No description provided for @registration_text.
  ///
  /// In en, this message translates to:
  /// **'Your registration is complete now, however, to access the app you need to complete the quiz in the following process. You can watch educational videos to help you pass the quiz. If you have given access code, you can use this code to bypass the quiz process.'**
  String get registration_text;

  /// No description provided for @continue_button.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continue_button;

  /// No description provided for @watch_text.
  ///
  /// In en, this message translates to:
  /// **'Watch'**
  String get watch_text;

  /// No description provided for @quiz_text.
  ///
  /// In en, this message translates to:
  /// **'Quiz'**
  String get quiz_text;

  /// No description provided for @finish_text.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish_text;

  /// No description provided for @congratulations.
  ///
  /// In en, this message translates to:
  /// **'Congratulations'**
  String get congratulations;

  /// No description provided for @not_eligible_for_transaction.
  ///
  /// In en, this message translates to:
  /// **'Not Eligible for Transaction'**
  String get not_eligible_for_transaction;

  /// No description provided for @to_scan_again.
  ///
  /// In en, this message translates to:
  /// **'to Scan Again!'**
  String get to_scan_again;

  /// No description provided for @oh_no.
  ///
  /// In en, this message translates to:
  /// **'Oh.. no..'**
  String get oh_no;

  /// No description provided for @oops.
  ///
  /// In en, this message translates to:
  /// **'OOPS'**
  String get oops;

  /// No description provided for @transaction_successful.
  ///
  /// In en, this message translates to:
  /// **'Transaction Successful!'**
  String get transaction_successful;

  /// No description provided for @quiz_completion_text_one.
  ///
  /// In en, this message translates to:
  /// **'You have successfully completed the quiz and been accepted into the eC-Card scheme.You will now be able to access our list of approved venues and collect your free condom supply. Please ensure that the app can access location services and your camera.'**
  String get quiz_completion_text_one;

  /// No description provided for @quiz_completion_text_two.
  ///
  /// In en, this message translates to:
  /// **'When you visit your venue please notify them that you are a member of the Sexual Health eC-Card scheme and that you would like to collect your free condoms. You will be asked to scan a QR code using the App to approve the transaction before being given your condom supply.'**
  String get quiz_completion_text_two;

  /// No description provided for @quiz_completion_text_three.
  ///
  /// In en, this message translates to:
  /// **'If you have any problem please contact the service intelligence centre.'**
  String get quiz_completion_text_three;

  /// No description provided for @quiz_completion_text_four.
  ///
  /// In en, this message translates to:
  /// **'Please note: Condoms are supplied in a fixed quantity, in one size and type. You can only make one collection in any 7 day period.'**
  String get quiz_completion_text_four;

  /// No description provided for @error_in_playing_video.
  ///
  /// In en, this message translates to:
  /// **'There is an error in playing the video. Please try again!!'**
  String get error_in_playing_video;

  /// No description provided for @please_accept_the_terms_and_conditions.
  ///
  /// In en, this message translates to:
  /// **'Please accept the terms and conditions.'**
  String get please_accept_the_terms_and_conditions;

  /// No description provided for @user_not_found.
  ///
  /// In en, this message translates to:
  /// **'User Not Found'**
  String get user_not_found;

  /// No description provided for @user_disabled.
  ///
  /// In en, this message translates to:
  /// **'User Disabled'**
  String get user_disabled;

  /// No description provided for @missing_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Missing Phone Number'**
  String get missing_phone_number;

  /// No description provided for @invalid_phone_number.
  ///
  /// In en, this message translates to:
  /// **''**
  String get invalid_phone_number;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @are_you_sure_logout.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get are_you_sure_logout;

  /// No description provided for @delete_account.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get delete_account;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @ivts.
  ///
  /// In en, this message translates to:
  /// **'IVTS'**
  String get ivts;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

  /// No description provided for @accessibility_statement.
  ///
  /// In en, this message translates to:
  /// **'Accessibility Statement'**
  String get accessibility_statement;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @venues.
  ///
  /// In en, this message translates to:
  /// **'Venues'**
  String get venues;

  /// No description provided for @education.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get education;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @orderCompleted.
  ///
  /// In en, this message translates to:
  /// **'Order Completed'**
  String get orderCompleted;

  /// No description provided for @transactionDetails.
  ///
  /// In en, this message translates to:
  /// **'Transaction Details'**
  String get transactionDetails;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @thankYouRecentTransaction.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your recent transaction at {date} {time} GMT. You can make your next pick-up after '**
  String thankYouRecentTransaction(String date, String time);

  /// No description provided for @countdownDay.
  ///
  /// In en, this message translates to:
  /// **'day'**
  String get countdownDay;

  /// No description provided for @countdownHour.
  ///
  /// In en, this message translates to:
  /// **'hour'**
  String get countdownHour;

  /// No description provided for @countdownMin.
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get countdownMin;

  /// No description provided for @countdownSec.
  ///
  /// In en, this message translates to:
  /// **'sec'**
  String get countdownSec;

  /// No description provided for @welcomeToEcCard.
  ///
  /// In en, this message translates to:
  /// **'Welcome to the eC-Card App'**
  String get welcomeToEcCard;

  /// No description provided for @registrationDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'Please note this app is not for emergency contraceptives. If you need these, please contact your local pharmacy or sexual health service directly.'**
  String get registrationDisclaimer;

  /// No description provided for @videos.
  ///
  /// In en, this message translates to:
  /// **'Videos'**
  String get videos;

  /// No description provided for @documents.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get documents;

  /// Title of the weblinks tab on the education screen
  ///
  /// In en, this message translates to:
  /// **'Weblinks'**
  String get weblinks;

  /// Shown when the weblinks list is empty
  ///
  /// In en, this message translates to:
  /// **'No educational weblinks found'**
  String get no_weblinks;

  /// Accessible hint for a weblink card that opens an external page
  ///
  /// In en, this message translates to:
  /// **'Opens in browser'**
  String get weblink_opens_in_browser;

  /// No description provided for @sizeLabel.
  ///
  /// In en, this message translates to:
  /// **'Size: {size}'**
  String sizeLabel(String size);

  /// No description provided for @viewsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} views'**
  String viewsCount(String count);

  /// No description provided for @ecCard.
  ///
  /// In en, this message translates to:
  /// **'eC-Card'**
  String get ecCard;

  /// No description provided for @stores.
  ///
  /// In en, this message translates to:
  /// **'Stores'**
  String get stores;

  /// No description provided for @kiosk.
  ///
  /// In en, this message translates to:
  /// **'Kiosk'**
  String get kiosk;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @addressLabel.
  ///
  /// In en, this message translates to:
  /// **'Address: '**
  String get addressLabel;

  /// No description provided for @notesLabel.
  ///
  /// In en, this message translates to:
  /// **'Notes: '**
  String get notesLabel;

  /// No description provided for @directions.
  ///
  /// In en, this message translates to:
  /// **'Directions'**
  String get directions;

  /// No description provided for @noKiosksAvailable.
  ///
  /// In en, this message translates to:
  /// **'Currently no Kiosks are available.'**
  String get noKiosksAvailable;

  /// No description provided for @noNotificationsYet.
  ///
  /// In en, this message translates to:
  /// **'No notifications yet!'**
  String get noNotificationsYet;

  /// No description provided for @selectProduct.
  ///
  /// In en, this message translates to:
  /// **'Select Product'**
  String get selectProduct;

  /// No description provided for @noActiveProducts.
  ///
  /// In en, this message translates to:
  /// **'No active products found in this store.'**
  String get noActiveProducts;

  /// No description provided for @productDescription.
  ///
  /// In en, this message translates to:
  /// **'Product Description'**
  String get productDescription;

  /// No description provided for @productSelectionWarning.
  ///
  /// In en, this message translates to:
  /// **'Please ensure you make the right selection as only one selection is allowed per ordering period.'**
  String get productSelectionWarning;

  /// No description provided for @confirmSelection.
  ///
  /// In en, this message translates to:
  /// **'Confirm Selection'**
  String get confirmSelection;

  /// No description provided for @productDescriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Product Description:'**
  String get productDescriptionLabel;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @systemTheme.
  ///
  /// In en, this message translates to:
  /// **'System Theme'**
  String get systemTheme;

  /// No description provided for @lightTheme.
  ///
  /// In en, this message translates to:
  /// **'Light Theme'**
  String get lightTheme;

  /// No description provided for @darkTheme.
  ///
  /// In en, this message translates to:
  /// **'Dark Theme'**
  String get darkTheme;

  /// No description provided for @transactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get transactions;

  /// No description provided for @allowUnlimitedTransactions.
  ///
  /// In en, this message translates to:
  /// **'Allow unlimited transactions?'**
  String get allowUnlimitedTransactions;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @delete_account_warning.
  ///
  /// In en, this message translates to:
  /// **'Once you delete your account, all your visit records will be permanently deleted'**
  String get delete_account_warning;

  /// No description provided for @additional_registration_questions.
  ///
  /// In en, this message translates to:
  /// **'Additional Registration Questions'**
  String get additional_registration_questions;

  /// No description provided for @submission_failed.
  ///
  /// In en, this message translates to:
  /// **'Submission failed: {error}'**
  String submission_failed(String error);

  /// No description provided for @no_questions_available.
  ///
  /// In en, this message translates to:
  /// **'No questions available.'**
  String get no_questions_available;

  /// No description provided for @select_option.
  ///
  /// In en, this message translates to:
  /// **'Select Option'**
  String get select_option;

  /// No description provided for @please_select_option.
  ///
  /// In en, this message translates to:
  /// **'Please select an option'**
  String get please_select_option;

  /// No description provided for @select_options.
  ///
  /// In en, this message translates to:
  /// **'Select Options'**
  String get select_options;

  /// No description provided for @please_select_at_least_one.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one option'**
  String get please_select_at_least_one;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @contact_information.
  ///
  /// In en, this message translates to:
  /// **'Contact Information'**
  String get contact_information;

  /// No description provided for @send_support_message.
  ///
  /// In en, this message translates to:
  /// **'Send Support Message'**
  String get send_support_message;

  /// No description provided for @title_hint.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title_hint;

  /// No description provided for @title_cannot_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Title cannot be empty'**
  String get title_cannot_be_empty;

  /// No description provided for @description_hint.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description_hint;

  /// No description provided for @description_cannot_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Description cannot be empty'**
  String get description_cannot_be_empty;

  /// No description provided for @email_invalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get email_invalid;

  /// No description provided for @email_hint.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get email_hint;

  /// No description provided for @add_attachment.
  ///
  /// In en, this message translates to:
  /// **'Add Attachment'**
  String get add_attachment;

  /// No description provided for @name_label.
  ///
  /// In en, this message translates to:
  /// **'Name: '**
  String get name_label;

  /// No description provided for @email_label.
  ///
  /// In en, this message translates to:
  /// **'Email: '**
  String get email_label;

  /// No description provided for @contact_number_label.
  ///
  /// In en, this message translates to:
  /// **'Contact Number: '**
  String get contact_number_label;

  /// No description provided for @enter_otp_delete_account.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP to delete your account'**
  String get enter_otp_delete_account;

  /// No description provided for @delete_confirm_warning.
  ///
  /// In en, this message translates to:
  /// **'After pressing submit, all your visit records will be permanently deleted. Do you wish to continue?'**
  String get delete_confirm_warning;

  /// No description provided for @unexpected_error_try_again.
  ///
  /// In en, this message translates to:
  /// **'Unexpected Error! Please try again.'**
  String get unexpected_error_try_again;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @field_is_mandatory.
  ///
  /// In en, this message translates to:
  /// **'Field is mandatory'**
  String get field_is_mandatory;

  /// No description provided for @current_location.
  ///
  /// In en, this message translates to:
  /// **'Current Location'**
  String get current_location;

  /// No description provided for @submitted_successfully.
  ///
  /// In en, this message translates to:
  /// **'Submitted Successfully!'**
  String get submitted_successfully;

  /// No description provided for @failed_to_load_profile.
  ///
  /// In en, this message translates to:
  /// **'Failed to load profile data'**
  String get failed_to_load_profile;

  /// No description provided for @api_exception_not_implemented.
  ///
  /// In en, this message translates to:
  /// **'API Exception Not Implemented'**
  String get api_exception_not_implemented;

  /// No description provided for @api_exception_request_cancelled.
  ///
  /// In en, this message translates to:
  /// **'API Exception Request Cancelled'**
  String get api_exception_request_cancelled;

  /// No description provided for @api_exception_internal_server_error.
  ///
  /// In en, this message translates to:
  /// **'API Exception Internal Server Error'**
  String get api_exception_internal_server_error;

  /// No description provided for @api_exception_not_found.
  ///
  /// In en, this message translates to:
  /// **'API Exception Not Found'**
  String get api_exception_not_found;

  /// No description provided for @api_exception_service_unavailable.
  ///
  /// In en, this message translates to:
  /// **'API Exception Service Unavailable'**
  String get api_exception_service_unavailable;

  /// No description provided for @api_exception_method_not_allowed.
  ///
  /// In en, this message translates to:
  /// **'API Exception Method Not Allowed'**
  String get api_exception_method_not_allowed;

  /// No description provided for @api_exception_bad_request.
  ///
  /// In en, this message translates to:
  /// **'API Exception Bad Request'**
  String get api_exception_bad_request;

  /// No description provided for @api_exception_unauthorized_request.
  ///
  /// In en, this message translates to:
  /// **'API Exception Unauthorized Request'**
  String get api_exception_unauthorized_request;

  /// No description provided for @api_exception_unexpected_error.
  ///
  /// In en, this message translates to:
  /// **'API Exception Unexpected Error'**
  String get api_exception_unexpected_error;

  /// No description provided for @api_exception_request_timeout.
  ///
  /// In en, this message translates to:
  /// **'API Exception Request Timeout'**
  String get api_exception_request_timeout;

  /// No description provided for @api_exception_no_internet_connection.
  ///
  /// In en, this message translates to:
  /// **'API Exception No Internet Connection'**
  String get api_exception_no_internet_connection;

  /// No description provided for @api_exception_send_timeout.
  ///
  /// In en, this message translates to:
  /// **'API Exception Send Timeout'**
  String get api_exception_send_timeout;

  /// No description provided for @api_exception_conflict.
  ///
  /// In en, this message translates to:
  /// **'API Exception Conflict'**
  String get api_exception_conflict;

  /// No description provided for @api_exception_unable_to_process_request.
  ///
  /// In en, this message translates to:
  /// **'API Exception Unable to Process Request'**
  String get api_exception_unable_to_process_request;

  /// No description provided for @api_exception_unable_to_perform_action.
  ///
  /// In en, this message translates to:
  /// **'API Exception Unable to Perform Action'**
  String get api_exception_unable_to_perform_action;

  /// No description provided for @api_exception_unauthorized_exception.
  ///
  /// In en, this message translates to:
  /// **'API Exception Unauthorized Exception'**
  String get api_exception_unauthorized_exception;

  /// No description provided for @api_exception_default_error.
  ///
  /// In en, this message translates to:
  /// **'API Exception Default Error'**
  String get api_exception_default_error;

  /// No description provided for @api_exception_format_exception.
  ///
  /// In en, this message translates to:
  /// **'API Exception Format Exception'**
  String get api_exception_format_exception;

  /// No description provided for @api_exception_not_acceptable.
  ///
  /// In en, this message translates to:
  /// **'API Exception Not Acceptable'**
  String get api_exception_not_acceptable;

  /// No description provided for @version_label.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version_label;

  /// No description provided for @update_available_title.
  ///
  /// In en, this message translates to:
  /// **'Update available'**
  String get update_available_title;

  /// No description provided for @update_required_title.
  ///
  /// In en, this message translates to:
  /// **'Update required'**
  String get update_required_title;

  /// No description provided for @update_available_message.
  ///
  /// In en, this message translates to:
  /// **'A new version of the app is available. Update now to get the latest features and fixes.'**
  String get update_available_message;

  /// No description provided for @update_required_message.
  ///
  /// In en, this message translates to:
  /// **'This version of the app is no longer supported. Please update to continue.'**
  String get update_required_message;

  /// No description provided for @update_now.
  ///
  /// In en, this message translates to:
  /// **'Update now'**
  String get update_now;

  /// No description provided for @update_later.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get update_later;

  /// No description provided for @permission_denied.
  ///
  /// In en, this message translates to:
  /// **'Permission Denied'**
  String get permission_denied;

  /// No description provided for @online.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get online;

  /// No description provided for @noProductsFound.
  ///
  /// In en, this message translates to:
  /// **'No products found'**
  String get noProductsFound;

  /// No description provided for @failedToLoadProducts.
  ///
  /// In en, this message translates to:
  /// **'Failed to load products.'**
  String get failedToLoadProducts;

  /// No description provided for @readMore.
  ///
  /// In en, this message translates to:
  /// **'Read More'**
  String get readMore;

  /// No description provided for @notEligibleToOrderNow.
  ///
  /// In en, this message translates to:
  /// **'You are not eligible to order right now.'**
  String get notEligibleToOrderNow;

  /// No description provided for @productDetails.
  ///
  /// In en, this message translates to:
  /// **'Product Details'**
  String get productDetails;

  /// No description provided for @orderNow.
  ///
  /// In en, this message translates to:
  /// **'Order Now'**
  String get orderNow;

  /// No description provided for @provideAddressAndContact.
  ///
  /// In en, this message translates to:
  /// **'Please Provide Your Address\nand Contact No. to Order'**
  String get provideAddressAndContact;

  /// No description provided for @streetRequired.
  ///
  /// In en, this message translates to:
  /// **'Street*'**
  String get streetRequired;

  /// No description provided for @addressLineTwo.
  ///
  /// In en, this message translates to:
  /// **'Address Line Two'**
  String get addressLineTwo;

  /// No description provided for @townCityRequired.
  ///
  /// In en, this message translates to:
  /// **'Town/City*'**
  String get townCityRequired;

  /// No description provided for @postcodeRequired.
  ///
  /// In en, this message translates to:
  /// **'Postcode*'**
  String get postcodeRequired;

  /// No description provided for @contactNoRequired.
  ///
  /// In en, this message translates to:
  /// **'Contact No.*'**
  String get contactNoRequired;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get requiredField;

  /// No description provided for @onlineStore.
  ///
  /// In en, this message translates to:
  /// **'Online Store'**
  String get onlineStore;

  /// No description provided for @confirmDeliveryInfo.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delivery Info'**
  String get confirmDeliveryInfo;

  /// No description provided for @failedToPlaceOrder.
  ///
  /// In en, this message translates to:
  /// **'Failed to place order. Please try again.'**
  String get failedToPlaceOrder;

  /// No description provided for @unexpectedErrorOccurred.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred'**
  String get unexpectedErrorOccurred;

  /// No description provided for @orderBlockWarning.
  ///
  /// In en, this message translates to:
  /// **'You will be blocked for 7 days to put next order.'**
  String get orderBlockWarning;

  /// No description provided for @orderPlaced.
  ///
  /// In en, this message translates to:
  /// **'Order Placed'**
  String get orderPlaced;

  /// No description provided for @orderConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Your Order is now confirmed.'**
  String get orderConfirmed;

  /// No description provided for @orderDetails.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get orderDetails;

  /// No description provided for @productNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Product Name:'**
  String get productNameLabel;

  /// No description provided for @venueNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Venue Name:'**
  String get venueNameLabel;

  /// No description provided for @orderDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Order Date:'**
  String get orderDateLabel;

  /// No description provided for @orderTimeLabel.
  ///
  /// In en, this message translates to:
  /// **'Order Time:'**
  String get orderTimeLabel;

  /// No description provided for @orderBlockedSevenDays.
  ///
  /// In en, this message translates to:
  /// **'You are blocked for 7 days\nto put next order.'**
  String get orderBlockedSevenDays;

  /// No description provided for @openingTimesText.
  ///
  /// In en, this message translates to:
  /// **'Opening times'**
  String get openingTimesText;

  /// No description provided for @openingHoursMonday.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get openingHoursMonday;

  /// No description provided for @openingHoursTuesday.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get openingHoursTuesday;

  /// No description provided for @openingHoursWednesday.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get openingHoursWednesday;

  /// No description provided for @openingHoursThursday.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get openingHoursThursday;

  /// No description provided for @openingHoursFriday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get openingHoursFriday;

  /// No description provided for @openingHoursSaturday.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get openingHoursSaturday;

  /// No description provided for @openingHoursSunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get openingHoursSunday;

  /// No description provided for @openingHoursMonShort.
  ///
  /// In en, this message translates to:
  /// **'Mon'**
  String get openingHoursMonShort;

  /// No description provided for @openingHoursTueShort.
  ///
  /// In en, this message translates to:
  /// **'Tue'**
  String get openingHoursTueShort;

  /// No description provided for @openingHoursWedShort.
  ///
  /// In en, this message translates to:
  /// **'Wed'**
  String get openingHoursWedShort;

  /// No description provided for @openingHoursThuShort.
  ///
  /// In en, this message translates to:
  /// **'Thu'**
  String get openingHoursThuShort;

  /// No description provided for @openingHoursFriShort.
  ///
  /// In en, this message translates to:
  /// **'Fri'**
  String get openingHoursFriShort;

  /// No description provided for @openingHoursSatShort.
  ///
  /// In en, this message translates to:
  /// **'Sat'**
  String get openingHoursSatShort;

  /// No description provided for @openingHoursSunShort.
  ///
  /// In en, this message translates to:
  /// **'Sun'**
  String get openingHoursSunShort;

  /// No description provided for @openingHoursClosed.
  ///
  /// In en, this message translates to:
  /// **'closed'**
  String get openingHoursClosed;

  /// No description provided for @openingHoursAnd.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get openingHoursAnd;

  /// No description provided for @openingHoursTo.
  ///
  /// In en, this message translates to:
  /// **'to'**
  String get openingHoursTo;

  /// No description provided for @orderHistory.
  ///
  /// In en, this message translates to:
  /// **'Order History'**
  String get orderHistory;

  /// No description provided for @noOrdersFound.
  ///
  /// In en, this message translates to:
  /// **'No orders found'**
  String get noOrdersFound;

  /// No description provided for @failedToLoadOrderHistory.
  ///
  /// In en, this message translates to:
  /// **'Failed to load order history. Please try again.'**
  String get failedToLoadOrderHistory;

  /// No description provided for @orderStatusLabel.
  ///
  /// In en, this message translates to:
  /// **'Status:'**
  String get orderStatusLabel;

  /// No description provided for @deliveryAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Delivery Address:'**
  String get deliveryAddressLabel;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @something_went_wrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get something_went_wrong;

  /// Accessible name for the video play button
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get videoPlay;

  /// Accessible name for the video pause button
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get videoPause;

  /// Accessible name for the video mute button
  ///
  /// In en, this message translates to:
  /// **'Mute'**
  String get videoMute;

  /// Accessible name for the video unmute button
  ///
  /// In en, this message translates to:
  /// **'Unmute'**
  String get videoUnmute;

  /// Shown in place of the player when a video cannot be played
  ///
  /// In en, this message translates to:
  /// **'This video is unavailable.'**
  String get videoUnavailable;

  /// Accessible name for the video full screen button
  ///
  /// In en, this message translates to:
  /// **'Full screen'**
  String get videoFullScreen;

  /// Accessible name for the exit full screen button
  ///
  /// In en, this message translates to:
  /// **'Exit full screen'**
  String get videoExitFullScreen;

  /// Accessible name for the video seek slider
  ///
  /// In en, this message translates to:
  /// **'Video position'**
  String get videoSeek;

  /// A duration spoken aloud by a screen reader
  ///
  /// In en, this message translates to:
  /// **'{minutes} minutes {seconds} seconds'**
  String videoTimeSpoken(int minutes, int seconds);

  /// Video progress spoken aloud
  ///
  /// In en, this message translates to:
  /// **'{position} of {duration}'**
  String videoProgressSpoken(String position, String duration);

  /// No description provided for @payloadTooLarge.
  ///
  /// In en, this message translates to:
  /// **'That file is too large to send. Please choose a smaller one.'**
  String get payloadTooLarge;

  /// No description provided for @tooManyRequests.
  ///
  /// In en, this message translates to:
  /// **'Too many attempts. Please wait a moment and try again.'**
  String get tooManyRequests;

  /// No description provided for @tooManyRequestsIn.
  ///
  /// In en, this message translates to:
  /// **'Too many attempts. Please try again in {seconds} seconds.'**
  String tooManyRequestsIn(int seconds);

  /// No description provided for @serverError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong at our end. Please try again shortly.'**
  String get serverError;

  /// No description provided for @serviceUnavailable.
  ///
  /// In en, this message translates to:
  /// **'The service is temporarily unavailable. Please try again shortly.'**
  String get serviceUnavailable;

  /// Accessible name of the app bar back arrow, read by screen readers
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get backButtonLabel;

  /// Accessible name of the QR scanner button on the home screen, read by screen readers
  ///
  /// In en, this message translates to:
  /// **'Scan QR code'**
  String get scanQrCode;

  /// Accessible name of the image attached to a support message, read by screen readers
  ///
  /// In en, this message translates to:
  /// **'Attached image'**
  String get attachedImage;

  /// Accessible name of the calendar button in the date of birth field, read by screen readers
  ///
  /// In en, this message translates to:
  /// **'Choose date of birth'**
  String get chooseDateOfBirth;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'bn',
        'cy',
        'en',
        'es',
        'fr',
        'gd',
        'gu',
        'pa',
        'pl',
        'pt',
        'ro',
        'so',
        'tr',
        'ur'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'cy':
      return AppLocalizationsCy();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'gd':
      return AppLocalizationsGd();
    case 'gu':
      return AppLocalizationsGu();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'so':
      return AppLocalizationsSo();
    case 'tr':
      return AppLocalizationsTr();
    case 'ur':
      return AppLocalizationsUr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
