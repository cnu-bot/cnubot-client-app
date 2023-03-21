import 'package:cnubot_app/app/1_data/0_model/shuttle_model.dart';
import 'package:cnubot_app/app/1_data/1_provider/shuttle_provider.dart';

class ShuttleRepository {
  final ShuttleProvider provider;
  ShuttleRepository({required this.provider});

  Future<List<ShuttleModel>> getShuttleModelList(
    Map<String, dynamic> paramMap,
  ) async {
    return provider.getShuttleModelList(paramMap);
  }
}
