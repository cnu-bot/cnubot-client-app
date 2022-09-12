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

  Future<Map<String, dynamic>> getLibraryTimes() async {
    final res = await apiProvider.getLibraryTimes('/app/library/home');
    return res.body;
  }

  Future<List<dynamic>> getLibraryImages() async {
    final res = await apiProvider.getLibraryImages('/app/library/image');
    return res.body;
  }
}
