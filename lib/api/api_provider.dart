import 'package:cnubot_app/api/base_provider.dart';
import 'package:get/get.dart';

class ApiProvider extends BaseProvider {
  Future<Response> getShuttles(String path) {
    return get(path);
  }

  Future<Response> getShuttleImages(String path) {
    return get(path);
  }
}
