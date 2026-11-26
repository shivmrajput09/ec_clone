/// Helpers for composing accessible names.
///
/// Screens that show "Label: value" rows render the label and the value as
/// separate `Text` widgets. Left alone, each becomes its own accessibility
/// node and the trailing punctuation on the label is announced on its own —
/// TalkBack reads a bare ":" as "colon". Composing one label for the pair
/// keeps the row to a single, meaningful announcement.
library;

/// Combines a display label with its value into a single accessible name.
///
/// Strips the trailing separator from [label] so "Product Name:" and "Mask"
/// are announced as "Product Name, Mask" rather than
/// "Product Name colon, Mask".
String semanticLabelFor(String label, String value) {
  final cleanedLabel = label.trim().replaceAll(RegExp(r'[:\s]+$'), '');
  final cleanedValue = value.trim();

  if (cleanedLabel.isEmpty) return cleanedValue;
  if (cleanedValue.isEmpty) return cleanedLabel;

  return '$cleanedLabel, $cleanedValue';
}
