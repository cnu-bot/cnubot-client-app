import 'package:cnubot_app/api/base_provider.dart';
import 'package:get/get.dart';

class ApiProvider extends BaseProvider {
  // shuttle
  Future<Response> getShuttles(String path) {
    return get(path);
  }

  Future<Response> getShuttleImages(String path) {
    return get(path);
  }

  // library
  Future<Response> getLibrarySeats(String path) {
    return get(path);
  }

  Future<Response> getLibraryTimes(String path) {
    return get(path);
  }

  Future<Response> getLibraryImages(String path) {
    return get(path);
  }
}
