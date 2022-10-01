import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Environment { dev, staging, prod }

class EnvironmentConstants {
  static String? config;

  static Future<void> setEnvironment() async {
    await dotenv.load(fileName: 'assets/config/.env');
    String mode = dotenv.env['mode'] ?? '';
    switch (mode) {
      case 'dev':
        config = dotenv.env['devUrl'] ?? '';
        break;
      case 'staging':
        config = dotenv.env['stagingUrl'] ?? '';
        break;
      case 'prod':
        config = dotenv.env['prodUrl'] ?? '';
        break;
    }
  }
}
