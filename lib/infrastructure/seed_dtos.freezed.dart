// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'seed_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SeedDtoTearOff {
  const _$SeedDtoTearOff();

// ignore: unused_element
  _SeedDto call({@required String value, @required DateTime expires_at}) {
    return _SeedDto(
      value: value,
      expires_at: expires_at,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SeedDto = _$SeedDtoTearOff();

/// @nodoc
mixin _$SeedDto {
  String get value;
  DateTime get expires_at;

  @JsonKey(ignore: true)
  $SeedDtoCopyWith<SeedDto> get copyWith;
}

/// @nodoc
abstract class $SeedDtoCopyWith<$Res> {
  factory $SeedDtoCopyWith(SeedDto value, $Res Function(SeedDto) then) =
      _$SeedDtoCopyWithImpl<$Res>;
  $Res call({String value, DateTime expires_at});
}

/// @nodoc
class _$SeedDtoCopyWithImpl<$Res> implements $SeedDtoCopyWith<$Res> {
  _$SeedDtoCopyWithImpl(this._value, this._then);

  final SeedDto _value;
  // ignore: unused_field
  final $Res Function(SeedDto) _then;

  @override
  $Res call({
    Object value = freezed,
    Object expires_at = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String,
      expires_at:
          expires_at == freezed ? _value.expires_at : expires_at as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$SeedDtoCopyWith<$Res> implements $SeedDtoCopyWith<$Res> {
  factory _$SeedDtoCopyWith(_SeedDto value, $Res Function(_SeedDto) then) =
      __$SeedDtoCopyWithImpl<$Res>;
  @override
  $Res call({String value, DateTime expires_at});
}

/// @nodoc
class __$SeedDtoCopyWithImpl<$Res> extends _$SeedDtoCopyWithImpl<$Res>
    implements _$SeedDtoCopyWith<$Res> {
  __$SeedDtoCopyWithImpl(_SeedDto _value, $Res Function(_SeedDto) _then)
      : super(_value, (v) => _then(v as _SeedDto));

  @override
  _SeedDto get _value => super._value as _SeedDto;

  @override
  $Res call({
    Object value = freezed,
    Object expires_at = freezed,
  }) {
    return _then(_SeedDto(
      value: value == freezed ? _value.value : value as String,
      expires_at:
          expires_at == freezed ? _value.expires_at : expires_at as DateTime,
    ));
  }
}

/// @nodoc
class _$_SeedDto extends _SeedDto {
  _$_SeedDto({@required this.value, @required this.expires_at})
      : assert(value != null),
        assert(expires_at != null),
        super._();

  @override
  final String value;
  @override
  final DateTime expires_at;

  @override
  String toString() {
    return 'SeedDto(value: $value, expires_at: $expires_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeedDto &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.expires_at, expires_at) ||
                const DeepCollectionEquality()
                    .equals(other.expires_at, expires_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(expires_at);

  @JsonKey(ignore: true)
  @override
  _$SeedDtoCopyWith<_SeedDto> get copyWith =>
      __$SeedDtoCopyWithImpl<_SeedDto>(this, _$identity);
}

abstract class _SeedDto extends SeedDto {
  _SeedDto._() : super._();
  factory _SeedDto({@required String value, @required DateTime expires_at}) =
      _$_SeedDto;

  @override
  String get value;
  @override
  DateTime get expires_at;
  @override
  @JsonKey(ignore: true)
  _$SeedDtoCopyWith<_SeedDto> get copyWith;
}
