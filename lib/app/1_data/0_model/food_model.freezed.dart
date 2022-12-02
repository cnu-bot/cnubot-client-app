// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'food_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) {
  return _FoodModel.fromJson(json);
}

/// @nodoc
mixin _$FoodModel {
  CafeteriaType get foodCourt => throw _privateConstructorUsedError;
  DayType get day => throw _privateConstructorUsedError;
  TimeType get time => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int? get calorie => throw _privateConstructorUsedError;
  List<String>? get foods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodModelCopyWith<FoodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodModelCopyWith<$Res> {
  factory $FoodModelCopyWith(FoodModel value, $Res Function(FoodModel) then) =
      _$FoodModelCopyWithImpl<$Res, FoodModel>;
  @useResult
  $Res call(
      {CafeteriaType foodCourt,
      DayType day,
      TimeType time,
      String type,
      int? calorie,
      List<String>? foods});
}

/// @nodoc
class _$FoodModelCopyWithImpl<$Res, $Val extends FoodModel>
    implements $FoodModelCopyWith<$Res> {
  _$FoodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodCourt = null,
    Object? day = null,
    Object? time = null,
    Object? type = null,
    Object? calorie = freezed,
    Object? foods = freezed,
  }) {
    return _then(_value.copyWith(
      foodCourt: null == foodCourt
          ? _value.foodCourt
          : foodCourt // ignore: cast_nullable_to_non_nullable
              as CafeteriaType,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayType,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeType,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      calorie: freezed == calorie
          ? _value.calorie
          : calorie // ignore: cast_nullable_to_non_nullable
              as int?,
      foods: freezed == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodModelCopyWith<$Res> implements $FoodModelCopyWith<$Res> {
  factory _$$_FoodModelCopyWith(
          _$_FoodModel value, $Res Function(_$_FoodModel) then) =
      __$$_FoodModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CafeteriaType foodCourt,
      DayType day,
      TimeType time,
      String type,
      int? calorie,
      List<String>? foods});
}

/// @nodoc
class __$$_FoodModelCopyWithImpl<$Res>
    extends _$FoodModelCopyWithImpl<$Res, _$_FoodModel>
    implements _$$_FoodModelCopyWith<$Res> {
  __$$_FoodModelCopyWithImpl(
      _$_FoodModel _value, $Res Function(_$_FoodModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodCourt = null,
    Object? day = null,
    Object? time = null,
    Object? type = null,
    Object? calorie = freezed,
    Object? foods = freezed,
  }) {
    return _then(_$_FoodModel(
      foodCourt: null == foodCourt
          ? _value.foodCourt
          : foodCourt // ignore: cast_nullable_to_non_nullable
              as CafeteriaType,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayType,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeType,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      calorie: freezed == calorie
          ? _value.calorie
          : calorie // ignore: cast_nullable_to_non_nullable
              as int?,
      foods: freezed == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodModel implements _FoodModel {
  const _$_FoodModel(
      {required this.foodCourt,
      required this.day,
      required this.time,
      required this.type,
      required this.calorie,
      required final List<String>? foods})
      : _foods = foods;

  factory _$_FoodModel.fromJson(Map<String, dynamic> json) =>
      _$$_FoodModelFromJson(json);

  @override
  final CafeteriaType foodCourt;
  @override
  final DayType day;
  @override
  final TimeType time;
  @override
  final String type;
  @override
  final int? calorie;
  final List<String>? _foods;
  @override
  List<String>? get foods {
    final value = _foods;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FoodModel(foodCourt: $foodCourt, day: $day, time: $time, type: $type, calorie: $calorie, foods: $foods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodModel &&
            (identical(other.foodCourt, foodCourt) ||
                other.foodCourt == foodCourt) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.calorie, calorie) || other.calorie == calorie) &&
            const DeepCollectionEquality().equals(other._foods, _foods));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, foodCourt, day, time, type,
      calorie, const DeepCollectionEquality().hash(_foods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodModelCopyWith<_$_FoodModel> get copyWith =>
      __$$_FoodModelCopyWithImpl<_$_FoodModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodModelToJson(
      this,
    );
  }
}

abstract class _FoodModel implements FoodModel {
  const factory _FoodModel(
      {required final CafeteriaType foodCourt,
      required final DayType day,
      required final TimeType time,
      required final String type,
      required final int? calorie,
      required final List<String>? foods}) = _$_FoodModel;

  factory _FoodModel.fromJson(Map<String, dynamic> json) =
      _$_FoodModel.fromJson;

  @override
  CafeteriaType get foodCourt;
  @override
  DayType get day;
  @override
  TimeType get time;
  @override
  String get type;
  @override
  int? get calorie;
  @override
  List<String>? get foods;
  @override
  @JsonKey(ignore: true)
  _$$_FoodModelCopyWith<_$_FoodModel> get copyWith =>
      throw _privateConstructorUsedError;
}
