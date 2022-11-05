// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticeModel _$NoticeModelFromJson(Map<String, dynamic> json) {
  return _NoticeModel.fromJson(json);
}

/// @nodoc
mixin _$NoticeModel {
  int get id => throw _privateConstructorUsedError;
  String get boardNum => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get boardDetail => throw _privateConstructorUsedError;
  String get writer => throw _privateConstructorUsedError;
  String get hits => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get picUrl => throw _privateConstructorUsedError;
  String? get period => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeModelCopyWith<NoticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeModelCopyWith<$Res> {
  factory $NoticeModelCopyWith(
          NoticeModel value, $Res Function(NoticeModel) then) =
      _$NoticeModelCopyWithImpl<$Res, NoticeModel>;
  @useResult
  $Res call(
      {int id,
      String boardNum,
      String name,
      String boardDetail,
      String writer,
      String hits,
      String url,
      String? picUrl,
      String? period,
      String date});
}

/// @nodoc
class _$NoticeModelCopyWithImpl<$Res, $Val extends NoticeModel>
    implements $NoticeModelCopyWith<$Res> {
  _$NoticeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? boardNum = null,
    Object? name = null,
    Object? boardDetail = null,
    Object? writer = null,
    Object? hits = null,
    Object? url = null,
    Object? picUrl = freezed,
    Object? period = freezed,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      boardNum: null == boardNum
          ? _value.boardNum
          : boardNum // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      boardDetail: null == boardDetail
          ? _value.boardDetail
          : boardDetail // ignore: cast_nullable_to_non_nullable
              as String,
      writer: null == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String,
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      picUrl: freezed == picUrl
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoticeModelCopyWith<$Res>
    implements $NoticeModelCopyWith<$Res> {
  factory _$$_NoticeModelCopyWith(
          _$_NoticeModel value, $Res Function(_$_NoticeModel) then) =
      __$$_NoticeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String boardNum,
      String name,
      String boardDetail,
      String writer,
      String hits,
      String url,
      String? picUrl,
      String? period,
      String date});
}

/// @nodoc
class __$$_NoticeModelCopyWithImpl<$Res>
    extends _$NoticeModelCopyWithImpl<$Res, _$_NoticeModel>
    implements _$$_NoticeModelCopyWith<$Res> {
  __$$_NoticeModelCopyWithImpl(
      _$_NoticeModel _value, $Res Function(_$_NoticeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? boardNum = null,
    Object? name = null,
    Object? boardDetail = null,
    Object? writer = null,
    Object? hits = null,
    Object? url = null,
    Object? picUrl = freezed,
    Object? period = freezed,
    Object? date = null,
  }) {
    return _then(_$_NoticeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      boardNum: null == boardNum
          ? _value.boardNum
          : boardNum // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      boardDetail: null == boardDetail
          ? _value.boardDetail
          : boardDetail // ignore: cast_nullable_to_non_nullable
              as String,
      writer: null == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String,
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      picUrl: freezed == picUrl
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeModel implements _NoticeModel {
  const _$_NoticeModel(
      {required this.id,
      required this.boardNum,
      required this.name,
      required this.boardDetail,
      required this.writer,
      required this.hits,
      required this.url,
      required this.picUrl,
      required this.period,
      required this.date});

  factory _$_NoticeModel.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeModelFromJson(json);

  @override
  final int id;
  @override
  final String boardNum;
  @override
  final String name;
  @override
  final String boardDetail;
  @override
  final String writer;
  @override
  final String hits;
  @override
  final String url;
  @override
  final String? picUrl;
  @override
  final String? period;
  @override
  final String date;

  @override
  String toString() {
    return 'NoticeModel(id: $id, boardNum: $boardNum, name: $name, boardDetail: $boardDetail, writer: $writer, hits: $hits, url: $url, picUrl: $picUrl, period: $period, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.boardNum, boardNum) ||
                other.boardNum == boardNum) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.boardDetail, boardDetail) ||
                other.boardDetail == boardDetail) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.hits, hits) || other.hits == hits) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.picUrl, picUrl) || other.picUrl == picUrl) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, boardNum, name, boardDetail,
      writer, hits, url, picUrl, period, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoticeModelCopyWith<_$_NoticeModel> get copyWith =>
      __$$_NoticeModelCopyWithImpl<_$_NoticeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeModelToJson(
      this,
    );
  }
}

abstract class _NoticeModel implements NoticeModel {
  const factory _NoticeModel(
      {required final int id,
      required final String boardNum,
      required final String name,
      required final String boardDetail,
      required final String writer,
      required final String hits,
      required final String url,
      required final String? picUrl,
      required final String? period,
      required final String date}) = _$_NoticeModel;

  factory _NoticeModel.fromJson(Map<String, dynamic> json) =
      _$_NoticeModel.fromJson;

  @override
  int get id;
  @override
  String get boardNum;
  @override
  String get name;
  @override
  String get boardDetail;
  @override
  String get writer;
  @override
  String get hits;
  @override
  String get url;
  @override
  String? get picUrl;
  @override
  String? get period;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeModelCopyWith<_$_NoticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
