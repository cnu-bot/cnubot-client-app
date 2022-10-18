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
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get writer => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  String get webLink => throw _privateConstructorUsedError;
  DateTime get regDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeModelCopyWith<NoticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeModelCopyWith<$Res> {
  factory $NoticeModelCopyWith(
          NoticeModel value, $Res Function(NoticeModel) then) =
      _$NoticeModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String content,
      String writer,
      int viewCount,
      String webLink,
      DateTime regDate});
}

/// @nodoc
class _$NoticeModelCopyWithImpl<$Res> implements $NoticeModelCopyWith<$Res> {
  _$NoticeModelCopyWithImpl(this._value, this._then);

  final NoticeModel _value;
  // ignore: unused_field
  final $Res Function(NoticeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? writer = freezed,
    Object? viewCount = freezed,
    Object? webLink = freezed,
    Object? regDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      writer: writer == freezed
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      webLink: webLink == freezed
          ? _value.webLink
          : webLink // ignore: cast_nullable_to_non_nullable
              as String,
      regDate: regDate == freezed
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_NoticeModelCopyWith<$Res>
    implements $NoticeModelCopyWith<$Res> {
  factory _$$_NoticeModelCopyWith(
          _$_NoticeModel value, $Res Function(_$_NoticeModel) then) =
      __$$_NoticeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String content,
      String writer,
      int viewCount,
      String webLink,
      DateTime regDate});
}

/// @nodoc
class __$$_NoticeModelCopyWithImpl<$Res> extends _$NoticeModelCopyWithImpl<$Res>
    implements _$$_NoticeModelCopyWith<$Res> {
  __$$_NoticeModelCopyWithImpl(
      _$_NoticeModel _value, $Res Function(_$_NoticeModel) _then)
      : super(_value, (v) => _then(v as _$_NoticeModel));

  @override
  _$_NoticeModel get _value => super._value as _$_NoticeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? writer = freezed,
    Object? viewCount = freezed,
    Object? webLink = freezed,
    Object? regDate = freezed,
  }) {
    return _then(_$_NoticeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      writer: writer == freezed
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      webLink: webLink == freezed
          ? _value.webLink
          : webLink // ignore: cast_nullable_to_non_nullable
              as String,
      regDate: regDate == freezed
          ? _value.regDate
          : regDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeModel implements _NoticeModel {
  const _$_NoticeModel(
      {required this.id,
      required this.title,
      required this.content,
      required this.writer,
      required this.viewCount,
      required this.webLink,
      required this.regDate});

  factory _$_NoticeModel.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String writer;
  @override
  final int viewCount;
  @override
  final String webLink;
  @override
  final DateTime regDate;

  @override
  String toString() {
    return 'NoticeModel(id: $id, title: $title, content: $content, writer: $writer, viewCount: $viewCount, webLink: $webLink, regDate: $regDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.writer, writer) &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
            const DeepCollectionEquality().equals(other.webLink, webLink) &&
            const DeepCollectionEquality().equals(other.regDate, regDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(writer),
      const DeepCollectionEquality().hash(viewCount),
      const DeepCollectionEquality().hash(webLink),
      const DeepCollectionEquality().hash(regDate));

  @JsonKey(ignore: true)
  @override
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
      required final String title,
      required final String content,
      required final String writer,
      required final int viewCount,
      required final String webLink,
      required final DateTime regDate}) = _$_NoticeModel;

  factory _NoticeModel.fromJson(Map<String, dynamic> json) =
      _$_NoticeModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get writer;
  @override
  int get viewCount;
  @override
  String get webLink;
  @override
  DateTime get regDate;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeModelCopyWith<_$_NoticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
