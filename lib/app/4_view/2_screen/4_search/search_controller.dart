import 'package:cnubot_app/app/1_data/0_model/notice_model.dart';
import 'package:cnubot_app/app/1_data/2_repository/notice_repository.dart';
import 'package:cnubot_app/app/1_data/2_repository/search_repository.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/board_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/international_hq_type.dart';
import 'package:cnubot_app/app/4_view/0_constant/enum/white_horse_square_type.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  final SearchRepository repository;

  SearchController({required this.repository});
}
