// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_price_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketPriceVO _$MarketPriceVOFromJson(Map<String, dynamic> json) {
  return _MarketPriceVO.fromJson(json);
}

/// @nodoc
mixin _$MarketPriceVO {
  @JsonKey(name: "item_id")
  String get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: "sell_price_min_date")
  String get sellPriceMinDate => throw _privateConstructorUsedError;
  @JsonKey(name: "quality")
  int get quality => throw _privateConstructorUsedError;
  @JsonKey(name: "sell_price_min")
  int get sellPriceMin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketPriceVOCopyWith<MarketPriceVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketPriceVOCopyWith<$Res> {
  factory $MarketPriceVOCopyWith(
          MarketPriceVO value, $Res Function(MarketPriceVO) then) =
      _$MarketPriceVOCopyWithImpl<$Res, MarketPriceVO>;
  @useResult
  $Res call(
      {@JsonKey(name: "item_id") String itemId,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "sell_price_min_date") String sellPriceMinDate,
      @JsonKey(name: "quality") int quality,
      @JsonKey(name: "sell_price_min") int sellPriceMin});
}

/// @nodoc
class _$MarketPriceVOCopyWithImpl<$Res, $Val extends MarketPriceVO>
    implements $MarketPriceVOCopyWith<$Res> {
  _$MarketPriceVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? city = null,
    Object? sellPriceMinDate = null,
    Object? quality = null,
    Object? sellPriceMin = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      sellPriceMinDate: null == sellPriceMinDate
          ? _value.sellPriceMinDate
          : sellPriceMinDate // ignore: cast_nullable_to_non_nullable
              as String,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
      sellPriceMin: null == sellPriceMin
          ? _value.sellPriceMin
          : sellPriceMin // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarketPriceVOCopyWith<$Res>
    implements $MarketPriceVOCopyWith<$Res> {
  factory _$$_MarketPriceVOCopyWith(
          _$_MarketPriceVO value, $Res Function(_$_MarketPriceVO) then) =
      __$$_MarketPriceVOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "item_id") String itemId,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "sell_price_min_date") String sellPriceMinDate,
      @JsonKey(name: "quality") int quality,
      @JsonKey(name: "sell_price_min") int sellPriceMin});
}

/// @nodoc
class __$$_MarketPriceVOCopyWithImpl<$Res>
    extends _$MarketPriceVOCopyWithImpl<$Res, _$_MarketPriceVO>
    implements _$$_MarketPriceVOCopyWith<$Res> {
  __$$_MarketPriceVOCopyWithImpl(
      _$_MarketPriceVO _value, $Res Function(_$_MarketPriceVO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? city = null,
    Object? sellPriceMinDate = null,
    Object? quality = null,
    Object? sellPriceMin = null,
  }) {
    return _then(_$_MarketPriceVO(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      sellPriceMinDate: null == sellPriceMinDate
          ? _value.sellPriceMinDate
          : sellPriceMinDate // ignore: cast_nullable_to_non_nullable
              as String,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
      sellPriceMin: null == sellPriceMin
          ? _value.sellPriceMin
          : sellPriceMin // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarketPriceVO implements _MarketPriceVO {
  _$_MarketPriceVO(
      {@JsonKey(name: "item_id") this.itemId = "",
      @JsonKey(name: "city") this.city = "",
      @JsonKey(name: "sell_price_min_date") this.sellPriceMinDate = "",
      @JsonKey(name: "quality") required this.quality,
      @JsonKey(name: "sell_price_min") required this.sellPriceMin});

  factory _$_MarketPriceVO.fromJson(Map<String, dynamic> json) =>
      _$$_MarketPriceVOFromJson(json);

  @override
  @JsonKey(name: "item_id")
  final String itemId;
  @override
  @JsonKey(name: "city")
  final String city;
  @override
  @JsonKey(name: "sell_price_min_date")
  final String sellPriceMinDate;
  @override
  @JsonKey(name: "quality")
  final int quality;
  @override
  @JsonKey(name: "sell_price_min")
  final int sellPriceMin;

  @override
  String toString() {
    return 'MarketPriceVO(itemId: $itemId, city: $city, sellPriceMinDate: $sellPriceMinDate, quality: $quality, sellPriceMin: $sellPriceMin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketPriceVO &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.sellPriceMinDate, sellPriceMinDate) ||
                other.sellPriceMinDate == sellPriceMinDate) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.sellPriceMin, sellPriceMin) ||
                other.sellPriceMin == sellPriceMin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, itemId, city, sellPriceMinDate, quality, sellPriceMin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketPriceVOCopyWith<_$_MarketPriceVO> get copyWith =>
      __$$_MarketPriceVOCopyWithImpl<_$_MarketPriceVO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarketPriceVOToJson(
      this,
    );
  }
}

abstract class _MarketPriceVO implements MarketPriceVO {
  factory _MarketPriceVO(
          {@JsonKey(name: "item_id") final String itemId,
          @JsonKey(name: "city") final String city,
          @JsonKey(name: "sell_price_min_date") final String sellPriceMinDate,
          @JsonKey(name: "quality") required final int quality,
          @JsonKey(name: "sell_price_min") required final int sellPriceMin}) =
      _$_MarketPriceVO;

  factory _MarketPriceVO.fromJson(Map<String, dynamic> json) =
      _$_MarketPriceVO.fromJson;

  @override
  @JsonKey(name: "item_id")
  String get itemId;
  @override
  @JsonKey(name: "city")
  String get city;
  @override
  @JsonKey(name: "sell_price_min_date")
  String get sellPriceMinDate;
  @override
  @JsonKey(name: "quality")
  int get quality;
  @override
  @JsonKey(name: "sell_price_min")
  int get sellPriceMin;
  @override
  @JsonKey(ignore: true)
  _$$_MarketPriceVOCopyWith<_$_MarketPriceVO> get copyWith =>
      throw _privateConstructorUsedError;
}
