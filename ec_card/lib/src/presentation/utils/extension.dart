import 'dart:io';

import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:intl/intl.dart';

extension Localiztion on BuildContext {
  AppLocalizations get localization => AppLocalizations.of(this)!;

  void showError(AppErrors appErrors) =>
      appErrors.getMessage(this).getSnackbar(this);

  void showSnackBar(String text) => text.getSnackbar(this);

  T getCubit<T extends Cubit>() {
    return BlocProvider.of<T>(this);
  }

  Future<T?> showBottomSheet<T>({
    required Widget child,
    bool expand = false,
  }) async {
    return showModalBottomSheet<T>(
      context: this,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return child;
      },
    );
  }
}

extension AppErrosX on AppErrors {
  String getMessage(BuildContext context) {
    return map(
      permissionDenied: (_) => context.localization.permission_denied,
      notFound: (_) => context.localization.notFound,
      requestTimeout: (_) => '',
      noInternetConnection: (_) => context.localization.noInternetConnection,
      defaultError: (error) => error.error,
      unexpectedError: (_) => context.localization.unexpectedError,
      payloadTooLarge: (_) => context.localization.payloadTooLarge,
      tooManyRequests: (error) {
        final retryAfter = error.retryAfter;
        if (retryAfter == null) return context.localization.tooManyRequests;

        return context.localization.tooManyRequestsIn(retryAfter.inSeconds);
      },
      serverError: (_) => context.localization.serverError,
      serviceUnavailable: (_) => context.localization.serviceUnavailable,
      authErrors: (error) => error.loginError.map(
        userNotFound: (_) => context.localization.user_not_found,
        userDisabled: (_) => context.localization.user_disabled,
        missingPhoneNumber: (_) => context.localization.missingPhoneNumber,
        invalidPhoneNumber: (_) => context.localization.invalidPhoneNumber,
        missingVerificationCode: (_) =>
            context.localization.missingVerificationCode,
        invalidVerificationCode: (_) =>
            context.localization.invalidVerificationCode,
        codeExpired: (_) => context.localization.codeExpired,
        unknownError: (error) =>
            context.localization.unknownLoginError(error.code, error.message),
      ),
      // cloudDatabaseError: (error) => error.databaseErrors.map(
      //   disconnected: (_) => context.localization.databaseDisconnected,
      //   expiredTokens: (_) => context.localization.datatbaseExpiredToken,
      //   invalidToken: (_) => context.localization.databaseInvalidToken,
      //   notFound: (_) => '',
      //   unknownError: (error) =>
      //       context.localization.unknownDatabaseError(error.message),
      // ),
      // cloudStorageError: (error) => error.storageErrors.map(
      //     uploadFailed: (_) => '',
      //     unauthorizedUser: (_) => '',
      //     unknownError: (error) => error.message),
      // authError: (error) => error.loginErrors.map(
      //   userDisabled: (_) => 'user-disabled',
      //   userNotFound: (_) => 'user-not-found',
      //   missingPhoneNumber: (_) => context.localization.missingPhoneNumber,
      //   invalidPhoneNumber: (_) => context.localization.invalidPhoneNumber,
      //   missingVerificationCode: (_) =>
      //       context.localization.missingVerificationCode,
      //   invalidVerificationCode: (_) =>
      //       context.localization.invalidVerificationCode,
      //   missingVerificationId: (_) => 'missingVerificationId',
      //   invalidVerificationId: (_) => 'invalidVerificationId',
      //   codeExpired: (_) => context.localization.codeExpired,
      //   unknownError: (error) =>
      //       context.localization.unknownLoginError(error.code, error.message),
      //   termsAndConditionsRejected: (_) =>
      //       context.localization.please_accept_the_terms_and_conditions,
      //   deviceChanged: (_) => 'device changed',
      // ),
    );
  }
}

extension InputFields on String {
  bool get isEmailAddress {
    String emailAddress = this;
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$""";

    return RegExp(emailRegex).hasMatch(emailAddress);
  }
}

/// `intl`'s `DateFormat` only carries symbol data for a fixed set of
/// locales. Several languages this app offers (e.g. Scottish Gaelic "gd")
/// aren't among them, so passing the app's language code straight through
/// throws `ArgumentError('Invalid locale "gd"')`. Use this wherever a
/// `DateFormat` locale comes from the current locale/platform, falling back
/// to English rather than crashing.
String safeDateFormatLocale(String languageCode) {
  return DateFormat.localeExists(languageCode) ? languageCode : 'en';
}

extension DateConverter on DateTime {
  String? get convert {
    try {
      return DateFormat('dd-MM-yyyy',
              safeDateFormatLocale(Platform.localeName.split('_')[0]))
          .format(this);
    } catch (e) {
      return null;
    }
  }
}

extension TimeOfDayExtension on TimeOfDay {
  TimeOfDay add({int hour = 0, int minute = 0}) {
    return this.replacing(hour: this.hour + hour, minute: this.minute + minute);
  }
}
