import 'package:http/http.dart';

import 'api.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  // shuttle
  Future<List<dynamic>> getShuttles() async {
    final res = await apiProvider.getShuttles('/app/shuttle/home');
    return res.body;
  }

  Future<List<dynamic>> getShuttleImages() async {
    final res = await apiProvider.getShuttleImages('/app/shuttle/image');
    return res.body;
  }

  // library
  Future<Map<String, dynamic>> getLibrarySeats() async {
    final res = await apiProvider.getLibrarySeats('/app/library/seats');
    return res.body;
  }
}
