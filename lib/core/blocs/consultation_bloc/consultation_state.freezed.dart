// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'consultation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConsultationStateTearOff {
  const _$ConsultationStateTearOff();

  ConsultationInitState initState() {
    return ConsultationInitState();
  }

  Content content(List<ConsultationRequest> list) {
    return Content(
      list,
    );
  }
}

/// @nodoc
const $ConsultationState = _$ConsultationStateTearOff();

/// @nodoc
mixin _$ConsultationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(List<ConsultationRequest> list) content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(List<ConsultationRequest> list)? content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(List<ConsultationRequest> list)? content,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConsultationInitState value) initState,
    required TResult Function(Content value) content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConsultationInitState value)? initState,
    TResult Function(Content value)? content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConsultationInitState value)? initState,
    TResult Function(Content value)? content,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationStateCopyWith<$Res> {
  factory $ConsultationStateCopyWith(
          ConsultationState value, $Res Function(ConsultationState) then) =
      _$ConsultationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConsultationStateCopyWithImpl<$Res>
    implements $ConsultationStateCopyWith<$Res> {
  _$ConsultationStateCopyWithImpl(this._value, this._then);

  final ConsultationState _value;
  // ignore: unused_field
  final $Res Function(ConsultationState) _then;
}

/// @nodoc
abstract class $ConsultationInitStateCopyWith<$Res> {
  factory $ConsultationInitStateCopyWith(ConsultationInitState value,
          $Res Function(ConsultationInitState) then) =
      _$ConsultationInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConsultationInitStateCopyWithImpl<$Res>
    extends _$ConsultationStateCopyWithImpl<$Res>
    implements $ConsultationInitStateCopyWith<$Res> {
  _$ConsultationInitStateCopyWithImpl(
      ConsultationInitState _value, $Res Function(ConsultationInitState) _then)
      : super(_value, (v) => _then(v as ConsultationInitState));

  @override
  ConsultationInitState get _value => super._value as ConsultationInitState;
}

/// @nodoc

class _$ConsultationInitState implements ConsultationInitState {
  _$ConsultationInitState();

  @override
  String toString() {
    return 'ConsultationState.initState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConsultationInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(List<ConsultationRequest> list) content,
  }) {
    return initState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(List<ConsultationRequest> list)? content,
  }) {
    return initState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(List<ConsultationRequest> list)? content,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConsultationInitState value) initState,
    required TResult Function(Content value) content,
  }) {
    return initState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConsultationInitState value)? initState,
    TResult Function(Content value)? content,
  }) {
    return initState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConsultationInitState value)? initState,
    TResult Function(Content value)? content,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState(this);
    }
    return orElse();
  }
}

abstract class ConsultationInitState implements ConsultationState {
  factory ConsultationInitState() = _$ConsultationInitState;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res>;
  $Res call({List<ConsultationRequest> list});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> extends _$ConsultationStateCopyWithImpl<$Res>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(Content _value, $Res Function(Content) _then)
      : super(_value, (v) => _then(v as Content));

  @override
  Content get _value => super._value as Content;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(Content(
      list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ConsultationRequest>,
    ));
  }
}

/// @nodoc

class _$Content implements Content {
  _$Content(this.list);

  @override
  final List<ConsultationRequest> list;

  @override
  String toString() {
    return 'ConsultationState.content(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Content &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(list));

  @JsonKey(ignore: true)
  @override
  $ContentCopyWith<Content> get copyWith =>
      _$ContentCopyWithImpl<Content>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(List<ConsultationRequest> list) content,
  }) {
    return content(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(List<ConsultationRequest> list)? content,
  }) {
    return content?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(List<ConsultationRequest> list)? content,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConsultationInitState value) initState,
    required TResult Function(Content value) content,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConsultationInitState value)? initState,
    TResult Function(Content value)? content,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConsultationInitState value)? initState,
    TResult Function(Content value)? content,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class Content implements ConsultationState {
  factory Content(List<ConsultationRequest> list) = _$Content;

  List<ConsultationRequest> get list;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}
