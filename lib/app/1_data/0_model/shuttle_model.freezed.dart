// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shuttle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShuttleModel _$ShuttleModelFromJson(Map<String, dynamic> json) {
  return _ShuttleModel.fromJson(json);
}

/// @nodoc
mixin _$ShuttleModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String>? get emailPrefixList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShuttleModelCopyWith<ShuttleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShuttleModelCopyWith<$Res> {
  factory $ShuttleModelCopyWith(
          ShuttleModel value, $Res Function(ShuttleModel) then) =
      _$ShuttleModelCopyWithImpl<$Res>;
  $Res call({int id, String name, List<String>? emailPrefixList});
}

/// @nodoc
class _$ShuttleModelCopyWithImpl<$Res> implements $ShuttleModelCopyWith<$Res> {
  _$ShuttleModelCopyWithImpl(this._value, this._then);

  final ShuttleModel _value;
  // ignore: unused_field
  final $Res Function(ShuttleModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? emailPrefixList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailPrefixList: emailPrefixList == freezed
          ? _value.emailPrefixList
          : emailPrefixList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ShuttleModelCopyWith<$Res>
    implements $ShuttleModelCopyWith<$Res> {
  factory _$$_ShuttleModelCopyWith(
          _$_ShuttleModel value, $Res Function(_$_ShuttleModel) then) =
      __$$_ShuttleModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, List<String>? emailPrefixList});
}

/// @nodoc
class __$$_ShuttleModelCopyWithImpl<$Res>
    extends _$ShuttleModelCopyWithImpl<$Res>
    implements _$$_ShuttleModelCopyWith<$Res> {
  __$$_ShuttleModelCopyWithImpl(
      _$_ShuttleModel _value, $Res Function(_$_ShuttleModel) _then)
      : super(_value, (v) => _then(v as _$_ShuttleModel));

  @override
  _$_ShuttleModel get _value => super._value as _$_ShuttleModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? emailPrefixList = freezed,
  }) {
    return _then(_$_ShuttleModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailPrefixList: emailPrefixList == freezed
          ? _value._emailPrefixList
          : emailPrefixList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShuttleModel implements _ShuttleModel {
  const _$_ShuttleModel(
      {required this.id,
      required this.name,
      required final List<String>? emailPrefixList})
      : _emailPrefixList = emailPrefixList;

  factory _$_ShuttleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShuttleModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<String>? _emailPrefixList;
  @override
  List<String>? get emailPrefixList {
    final value = _emailPrefixList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShuttleModel(id: $id, name: $name, emailPrefixList: $emailPrefixList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShuttleModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._emailPrefixList, _emailPrefixList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_emailPrefixList));

  @JsonKey(ignore: true)
  @override
  _$$_ShuttleModelCopyWith<_$_ShuttleModel> get copyWith =>
      __$$_ShuttleModelCopyWithImpl<_$_ShuttleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShuttleModelToJson(
      this,
    );
  }
}

abstract class _ShuttleModel implements ShuttleModel {
  const factory _ShuttleModel(
      {required final int id,
      required final String name,
      required final List<String>? emailPrefixList}) = _$_ShuttleModel;

  factory _ShuttleModel.fromJson(Map<String, dynamic> json) =
      _$_ShuttleModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<String>? get emailPrefixList;
  @override
  @JsonKey(ignore: true)
  _$$_ShuttleModelCopyWith<_$_ShuttleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
