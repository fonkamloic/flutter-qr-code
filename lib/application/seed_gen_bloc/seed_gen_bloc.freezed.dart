// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'seed_gen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SeedGenEventTearOff {
  const _$SeedGenEventTearOff();

// ignore: unused_element
  _InitializeToken getSeed() {
    return const _InitializeToken();
  }
}

/// @nodoc
// ignore: unused_element
const $SeedGenEvent = _$SeedGenEventTearOff();

/// @nodoc
mixin _$SeedGenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getSeed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getSeed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getSeed(_InitializeToken value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getSeed(_InitializeToken value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SeedGenEventCopyWith<$Res> {
  factory $SeedGenEventCopyWith(
          SeedGenEvent value, $Res Function(SeedGenEvent) then) =
      _$SeedGenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SeedGenEventCopyWithImpl<$Res> implements $SeedGenEventCopyWith<$Res> {
  _$SeedGenEventCopyWithImpl(this._value, this._then);

  final SeedGenEvent _value;
  // ignore: unused_field
  final $Res Function(SeedGenEvent) _then;
}

/// @nodoc
abstract class _$InitializeTokenCopyWith<$Res> {
  factory _$InitializeTokenCopyWith(
          _InitializeToken value, $Res Function(_InitializeToken) then) =
      __$InitializeTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializeTokenCopyWithImpl<$Res>
    extends _$SeedGenEventCopyWithImpl<$Res>
    implements _$InitializeTokenCopyWith<$Res> {
  __$InitializeTokenCopyWithImpl(
      _InitializeToken _value, $Res Function(_InitializeToken) _then)
      : super(_value, (v) => _then(v as _InitializeToken));

  @override
  _InitializeToken get _value => super._value as _InitializeToken;
}

/// @nodoc
class _$_InitializeToken implements _InitializeToken {
  const _$_InitializeToken();

  @override
  String toString() {
    return 'SeedGenEvent.getSeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitializeToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getSeed(),
  }) {
    assert(getSeed != null);
    return getSeed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getSeed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getSeed != null) {
      return getSeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getSeed(_InitializeToken value),
  }) {
    assert(getSeed != null);
    return getSeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getSeed(_InitializeToken value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getSeed != null) {
      return getSeed(this);
    }
    return orElse();
  }
}

abstract class _InitializeToken implements SeedGenEvent {
  const factory _InitializeToken() = _$_InitializeToken;
}

/// @nodoc
class _$SeedGenStateTearOff {
  const _$SeedGenStateTearOff();

// ignore: unused_element
  _Loading fetchingSeed() {
    return const _Loading();
  }

// ignore: unused_element
  _Failure fetchFailed({@required SeedFailure failure}) {
    return _Failure(
      failure: failure,
    );
  }

// ignore: unused_element
  _SeedState fetchSuccess({@required Seed seed}) {
    return _SeedState(
      seed: seed,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SeedGenState = _$SeedGenStateTearOff();

/// @nodoc
mixin _$SeedGenState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchingSeed(),
    @required TResult fetchFailed(SeedFailure failure),
    @required TResult fetchSuccess(Seed seed),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchingSeed(),
    TResult fetchFailed(SeedFailure failure),
    TResult fetchSuccess(Seed seed),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchingSeed(_Loading value),
    @required TResult fetchFailed(_Failure value),
    @required TResult fetchSuccess(_SeedState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchingSeed(_Loading value),
    TResult fetchFailed(_Failure value),
    TResult fetchSuccess(_SeedState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SeedGenStateCopyWith<$Res> {
  factory $SeedGenStateCopyWith(
          SeedGenState value, $Res Function(SeedGenState) then) =
      _$SeedGenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SeedGenStateCopyWithImpl<$Res> implements $SeedGenStateCopyWith<$Res> {
  _$SeedGenStateCopyWithImpl(this._value, this._then);

  final SeedGenState _value;
  // ignore: unused_field
  final $Res Function(SeedGenState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SeedGenStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SeedGenState.fetchingSeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchingSeed(),
    @required TResult fetchFailed(SeedFailure failure),
    @required TResult fetchSuccess(Seed seed),
  }) {
    assert(fetchingSeed != null);
    assert(fetchFailed != null);
    assert(fetchSuccess != null);
    return fetchingSeed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchingSeed(),
    TResult fetchFailed(SeedFailure failure),
    TResult fetchSuccess(Seed seed),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchingSeed != null) {
      return fetchingSeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchingSeed(_Loading value),
    @required TResult fetchFailed(_Failure value),
    @required TResult fetchSuccess(_SeedState value),
  }) {
    assert(fetchingSeed != null);
    assert(fetchFailed != null);
    assert(fetchSuccess != null);
    return fetchingSeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchingSeed(_Loading value),
    TResult fetchFailed(_Failure value),
    TResult fetchSuccess(_SeedState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchingSeed != null) {
      return fetchingSeed(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SeedGenState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({SeedFailure failure});

  $SeedFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$SeedGenStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failure(
      failure: failure == freezed ? _value.failure : failure as SeedFailure,
    ));
  }

  @override
  $SeedFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $SeedFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure({@required this.failure}) : assert(failure != null);

  @override
  final SeedFailure failure;

  @override
  String toString() {
    return 'SeedGenState.fetchFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchingSeed(),
    @required TResult fetchFailed(SeedFailure failure),
    @required TResult fetchSuccess(Seed seed),
  }) {
    assert(fetchingSeed != null);
    assert(fetchFailed != null);
    assert(fetchSuccess != null);
    return fetchFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchingSeed(),
    TResult fetchFailed(SeedFailure failure),
    TResult fetchSuccess(Seed seed),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchFailed != null) {
      return fetchFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchingSeed(_Loading value),
    @required TResult fetchFailed(_Failure value),
    @required TResult fetchSuccess(_SeedState value),
  }) {
    assert(fetchingSeed != null);
    assert(fetchFailed != null);
    assert(fetchSuccess != null);
    return fetchFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchingSeed(_Loading value),
    TResult fetchFailed(_Failure value),
    TResult fetchSuccess(_SeedState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchFailed != null) {
      return fetchFailed(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SeedGenState {
  const factory _Failure({@required SeedFailure failure}) = _$_Failure;

  SeedFailure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}

/// @nodoc
abstract class _$SeedStateCopyWith<$Res> {
  factory _$SeedStateCopyWith(
          _SeedState value, $Res Function(_SeedState) then) =
      __$SeedStateCopyWithImpl<$Res>;
  $Res call({Seed seed});

  $SeedCopyWith<$Res> get seed;
}

/// @nodoc
class __$SeedStateCopyWithImpl<$Res> extends _$SeedGenStateCopyWithImpl<$Res>
    implements _$SeedStateCopyWith<$Res> {
  __$SeedStateCopyWithImpl(_SeedState _value, $Res Function(_SeedState) _then)
      : super(_value, (v) => _then(v as _SeedState));

  @override
  _SeedState get _value => super._value as _SeedState;

  @override
  $Res call({
    Object seed = freezed,
  }) {
    return _then(_SeedState(
      seed: seed == freezed ? _value.seed : seed as Seed,
    ));
  }

  @override
  $SeedCopyWith<$Res> get seed {
    if (_value.seed == null) {
      return null;
    }
    return $SeedCopyWith<$Res>(_value.seed, (value) {
      return _then(_value.copyWith(seed: value));
    });
  }
}

/// @nodoc
class _$_SeedState implements _SeedState {
  const _$_SeedState({@required this.seed}) : assert(seed != null);

  @override
  final Seed seed;

  @override
  String toString() {
    return 'SeedGenState.fetchSuccess(seed: $seed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeedState &&
            (identical(other.seed, seed) ||
                const DeepCollectionEquality().equals(other.seed, seed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seed);

  @JsonKey(ignore: true)
  @override
  _$SeedStateCopyWith<_SeedState> get copyWith =>
      __$SeedStateCopyWithImpl<_SeedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchingSeed(),
    @required TResult fetchFailed(SeedFailure failure),
    @required TResult fetchSuccess(Seed seed),
  }) {
    assert(fetchingSeed != null);
    assert(fetchFailed != null);
    assert(fetchSuccess != null);
    return fetchSuccess(seed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchingSeed(),
    TResult fetchFailed(SeedFailure failure),
    TResult fetchSuccess(Seed seed),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchSuccess != null) {
      return fetchSuccess(seed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchingSeed(_Loading value),
    @required TResult fetchFailed(_Failure value),
    @required TResult fetchSuccess(_SeedState value),
  }) {
    assert(fetchingSeed != null);
    assert(fetchFailed != null);
    assert(fetchSuccess != null);
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchingSeed(_Loading value),
    TResult fetchFailed(_Failure value),
    TResult fetchSuccess(_SeedState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SeedState implements SeedGenState {
  const factory _SeedState({@required Seed seed}) = _$_SeedState;

  Seed get seed;
  @JsonKey(ignore: true)
  _$SeedStateCopyWith<_SeedState> get copyWith;
}
