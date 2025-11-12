// lib/logger.dart
import 'package:logger/logger.dart';

final _logger = Logger();

void logInfo(String message) {
  _logger.i(message);
}

void logError(String message) {
  _logger.e(message);
}
