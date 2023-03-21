import 'package:freezed_annotation/freezed_annotation.dart';
part 'notice_model.freezed.dart';
part 'notice_model.g.dart';

@freezed
class NoticeModel with _$NoticeModel {
  const factory NoticeModel({
    required int id,
    required String? boardNum,
    required String name,
    required String boardDetail,
    required String writer,
    required String hits,
    required String url,
    required String? picUrl,
    required String? period,
    required String date,
  }) = _NoticeModel;

  factory NoticeModel.fromJson(Map<String, Object?> json) =>
      _$NoticeModelFromJson(json);
}
