// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'first_sh_food_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirstShFoodModel _$FirstShFoodModelFromJson(Map<String, dynamic> json) {
  return _FirstShFoodModel.fromJson(json);
}

/// @nodoc
mixin _$FirstShFoodModel {
  String get foodName => throw _privateConstructorUsedError;
  FirstShFoodType get type => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirstShFoodModelCopyWith<FirstShFoodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstShFoodModelCopyWith<$Res> {
  factory $FirstShFoodModelCopyWith(
          FirstShFoodModel value, $Res Function(FirstShFoodModel) then) =
      _$FirstShFoodModelCopyWithImpl<$Res, FirstShFoodModel>;
  @useResult
  $Res call(
      {String foodName, FirstShFoodType type, String price, String imageUrl});
}

/// @nodoc
class _$FirstShFoodModelCopyWithImpl<$Res, $Val extends FirstShFoodModel>
    implements $FirstShFoodModelCopyWith<$Res> {
  _$FirstShFoodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodName = null,
    Object? type = null,
    Object? price = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      foodName: null == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FirstShFoodType,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirstShFoodModelCopyWith<$Res>
    implements $FirstShFoodModelCopyWith<$Res> {
  factory _$$_FirstShFoodModelCopyWith(
          _$_FirstShFoodModel value, $Res Function(_$_FirstShFoodModel) then) =
      __$$_FirstShFoodModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String foodName, FirstShFoodType type, String price, String imageUrl});
}

/// @nodoc
class __$$_FirstShFoodModelCopyWithImpl<$Res>
    extends _$FirstShFoodModelCopyWithImpl<$Res, _$_FirstShFoodModel>
    implements _$$_FirstShFoodModelCopyWith<$Res> {
  __$$_FirstShFoodModelCopyWithImpl(
      _$_FirstShFoodModel _value, $Res Function(_$_FirstShFoodModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodName = null,
    Object? type = null,
    Object? price = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_FirstShFoodModel(
      foodName: null == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FirstShFoodType,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirstShFoodModel implements _FirstShFoodModel {
  const _$_FirstShFoodModel(
      {required this.foodName,
      required this.type,
      required this.price,
      required this.imageUrl});

  factory _$_FirstShFoodModel.fromJson(Map<String, dynamic> json) =>
      _$$_FirstShFoodModelFromJson(json);

  @override
  final String foodName;
  @override
  final FirstShFoodType type;
  @override
  final String price;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'FirstShFoodModel(foodName: $foodName, type: $type, price: $price, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstShFoodModel &&
            (identical(other.foodName, foodName) ||
                other.foodName == foodName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, foodName, type, price, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirstShFoodModelCopyWith<_$_FirstShFoodModel> get copyWith =>
      __$$_FirstShFoodModelCopyWithImpl<_$_FirstShFoodModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirstShFoodModelToJson(
      this,
    );
  }
}

abstract class _FirstShFoodModel implements FirstShFoodModel {
  const factory _FirstShFoodModel(
      {required final String foodName,
      required final FirstShFoodType type,
      required final String price,
      required final String imageUrl}) = _$_FirstShFoodModel;

  factory _FirstShFoodModel.fromJson(Map<String, dynamic> json) =
      _$_FirstShFoodModel.fromJson;

  @override
  String get foodName;
  @override
  FirstShFoodType get type;
  @override
  String get price;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_FirstShFoodModelCopyWith<_$_FirstShFoodModel> get copyWith =>
      throw _privateConstructorUsedError;
}
