import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter/widgets.dart';

String localizedVenueNotes(BuildContext context, String? notes) {
  final text = notes ?? '';
  if (text.trim().isEmpty) {
    return text;
  }

  final localizations = AppLocalizations.of(context)!;
  final replacements = <String, String>{
    'Opening times': localizations.openingTimesText,
    'Monday': localizations.openingHoursMonday,
    'Tuesday': localizations.openingHoursTuesday,
    'Wednesday': localizations.openingHoursWednesday,
    'Thursday': localizations.openingHoursThursday,
    'Friday': localizations.openingHoursFriday,
    'Saturday': localizations.openingHoursSaturday,
    'Sunday': localizations.openingHoursSunday,
    'Mon': localizations.openingHoursMonShort,
    'Tue': localizations.openingHoursTueShort,
    'Wed': localizations.openingHoursWedShort,
    'Thu': localizations.openingHoursThuShort,
    'Fri': localizations.openingHoursFriShort,
    'Sat': localizations.openingHoursSatShort,
    'Sun': localizations.openingHoursSunShort,
    'closed': localizations.openingHoursClosed,
    'and': localizations.openingHoursAnd,
    'to': localizations.openingHoursTo,
  };

  var localizedText = text;
  for (final entry in replacements.entries) {
    localizedText = localizedText.replaceAllMapped(
      RegExp('\\b${RegExp.escape(entry.key)}\\b', caseSensitive: false),
      (_) => entry.value,
    );
  }

  return localizedText;
}
