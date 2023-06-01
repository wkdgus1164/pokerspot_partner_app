import 'package:logger/logger.dart' as logger;

class Logger {
  Logger._privateConstructor();
  static final Logger _instance = Logger._privateConstructor();

  factory Logger() {
    return _instance;
  }

  static final logger.Logger _logger = logger.Logger(
    printer: logger.PrettyPrinter(
      printTime: true,
    ),
  );

  static void d(dynamic message) {
    _logger.d(message);
  }

  static void e(dynamic message, [Object? error, StackTrace? stackTrace]) {
    _logger.e(message, error, stackTrace);
  }
}
