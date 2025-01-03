// coverage:ignore-file
import 'package:intl/intl.dart';

/// An exception class which will be catch to see if any data was mismatched or
/// was null when passing forward
class DataException implements Exception {
  /// [message] : A message for the exception.
  DataException({
    required this.message,
  });

  String message;

  @override
  String toString() => '$message';
}

extension StringX on String {
  String get offerDateFormat =>
      DateFormat("dd/MM/yyyy").format(DateTime.parse(this));
}

extension DateTimeX on String {
  DateTime get ddmmyyyyFormat => DateFormat("dd/MM/yyyy").parse(this);
}
