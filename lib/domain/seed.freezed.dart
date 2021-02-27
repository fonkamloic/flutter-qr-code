// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'seed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SeedTearOff {
  const _$SeedTearOff();

// ignore: unused_element
  _Seed call({@required String value, @required Duration timeLeft}) {
    return _Seed(
      value: value,
      timeLeft: timeLeft,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Seed = _$SeedTearOff();

/// @nodoc
mixin _$Seed {
  String get value;
  Duration get timeLeft;

  @JsonKey(ignore: true)
  $SeedCopyWith<Seed> get copyWith;
}

/// @nodoc
abstract class $SeedCopyWith<$Res> {
  factory $SeedCopyWith(Seed value, $Res Function(Seed) then) =
      _$SeedCopyWithImpl<$Res>;
  $Res call({String value, Duration timeLeft});
}

/// @nodoc
class _$SeedCopyWithImpl<$Res> implements $SeedCopyWith<$Res> {
  _$SeedCopyWithImpl(this._value, this._then);

  final Seed _value;
  // ignore: unused_field
  final $Res Function(Seed) _then;

  @override
  $Res call({
    Object value = freezed,
    Object timeLeft = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String,
      timeLeft: timeLeft == freezed ? _value.timeLeft : timeLeft as Duration,
    ));
  }
}

/// @nodoc
abstract class _$SeedCopyWith<$Res> implements $SeedCopyWith<$Res> {
  factory _$SeedCopyWith(_Seed value, $Res Function(_Seed) then) =
      __$SeedCopyWithImpl<$Res>;
  @override
  $Res call({String value, Duration timeLeft});
}

/// @nodoc
class __$SeedCopyWithImpl<$Res> extends _$SeedCopyWithImpl<$Res>
    implements _$SeedCopyWith<$Res> {
  __$SeedCopyWithImpl(_Seed _value, $Res Function(_Seed) _then)
      : super(_value, (v) => _then(v as _Seed));

  @override
  _Seed get _value => super._value as _Seed;

  @override
  $Res call({
    Object value = freezed,
    Object timeLeft = freezed,
  }) {
    return _then(_Seed(
      value: value == freezed ? _value.value : value as String,
      timeLeft: timeLeft == freezed ? _value.timeLeft : timeLeft as Duration,
    ));
  }
}

/// @nodoc
class _$_Seed extends _Seed {
  const _$_Seed({@required this.value, @required this.timeLeft})
      : assert(value != null),
        assert(timeLeft != null),
        super._();

  @override
  final String value;
  @override
  final Duration timeLeft;

  @override
  String toString() {
    return 'Seed(value: $value, timeLeft: $timeLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Seed &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.timeLeft, timeLeft) ||
                const DeepCollectionEquality()
                    .equals(other.timeLeft, timeLeft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(timeLeft);

  @JsonKey(ignore: true)
  @override
  _$SeedCopyWith<_Seed> get copyWith =>
      __$SeedCopyWithImpl<_Seed>(this, _$identity);
}

abstract class _Seed extends Seed {
  const _Seed._() : super._();
  const factory _Seed({@required String value, @required Duration timeLeft}) =
      _$_Seed;

  @override
  String get value;
  @override
  Duration get timeLeft;
  @override
  @JsonKey(ignore: true)
  _$SeedCopyWith<_Seed> get copyWith;
}
