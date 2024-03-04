// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protocol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorInfo _$ErrorInfoFromJson(Map<String, dynamic> json) {
  return _ErrorInfo.fromJson(json);
}

/// @nodoc
mixin _$ErrorInfo {
  bool get success => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorInfoCopyWith<ErrorInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorInfoCopyWith<$Res> {
  factory $ErrorInfoCopyWith(ErrorInfo value, $Res Function(ErrorInfo) then) =
      _$ErrorInfoCopyWithImpl<$Res, ErrorInfo>;
  @useResult
  $Res call({bool success, int code, String desc});
}

/// @nodoc
class _$ErrorInfoCopyWithImpl<$Res, $Val extends ErrorInfo>
    implements $ErrorInfoCopyWith<$Res> {
  _$ErrorInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? code = null,
    Object? desc = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorInfoImplCopyWith<$Res>
    implements $ErrorInfoCopyWith<$Res> {
  factory _$$ErrorInfoImplCopyWith(
          _$ErrorInfoImpl value, $Res Function(_$ErrorInfoImpl) then) =
      __$$ErrorInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int code, String desc});
}

/// @nodoc
class __$$ErrorInfoImplCopyWithImpl<$Res>
    extends _$ErrorInfoCopyWithImpl<$Res, _$ErrorInfoImpl>
    implements _$$ErrorInfoImplCopyWith<$Res> {
  __$$ErrorInfoImplCopyWithImpl(
      _$ErrorInfoImpl _value, $Res Function(_$ErrorInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? code = null,
    Object? desc = null,
  }) {
    return _then(_$ErrorInfoImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorInfoImpl with DiagnosticableTreeMixin implements _ErrorInfo {
  const _$ErrorInfoImpl(
      {required this.success, required this.code, required this.desc});

  factory _$ErrorInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorInfoImplFromJson(json);

  @override
  final bool success;
  @override
  final int code;
  @override
  final String desc;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ErrorInfo(success: $success, code: $code, desc: $desc)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ErrorInfo'))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('desc', desc));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorInfoImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, code, desc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorInfoImplCopyWith<_$ErrorInfoImpl> get copyWith =>
      __$$ErrorInfoImplCopyWithImpl<_$ErrorInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorInfoImplToJson(
      this,
    );
  }
}

abstract class _ErrorInfo implements ErrorInfo {
  const factory _ErrorInfo(
      {required final bool success,
      required final int code,
      required final String desc}) = _$ErrorInfoImpl;

  factory _ErrorInfo.fromJson(Map<String, dynamic> json) =
      _$ErrorInfoImpl.fromJson;

  @override
  bool get success;
  @override
  int get code;
  @override
  String get desc;
  @override
  @JsonKey(ignore: true)
  _$$ErrorInfoImplCopyWith<_$ErrorInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReqLogin _$ReqLoginFromJson(Map<String, dynamic> json) {
  return _ReqLogin.fromJson(json);
}

/// @nodoc
mixin _$ReqLogin {
  String get id => throw _privateConstructorUsedError;
  String get pw => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqLoginCopyWith<ReqLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqLoginCopyWith<$Res> {
  factory $ReqLoginCopyWith(ReqLogin value, $Res Function(ReqLogin) then) =
      _$ReqLoginCopyWithImpl<$Res, ReqLogin>;
  @useResult
  $Res call({String id, String pw});
}

/// @nodoc
class _$ReqLoginCopyWithImpl<$Res, $Val extends ReqLogin>
    implements $ReqLoginCopyWith<$Res> {
  _$ReqLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pw = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pw: null == pw
          ? _value.pw
          : pw // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReqLoginImplCopyWith<$Res>
    implements $ReqLoginCopyWith<$Res> {
  factory _$$ReqLoginImplCopyWith(
          _$ReqLoginImpl value, $Res Function(_$ReqLoginImpl) then) =
      __$$ReqLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String pw});
}

/// @nodoc
class __$$ReqLoginImplCopyWithImpl<$Res>
    extends _$ReqLoginCopyWithImpl<$Res, _$ReqLoginImpl>
    implements _$$ReqLoginImplCopyWith<$Res> {
  __$$ReqLoginImplCopyWithImpl(
      _$ReqLoginImpl _value, $Res Function(_$ReqLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pw = null,
  }) {
    return _then(_$ReqLoginImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pw: null == pw
          ? _value.pw
          : pw // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReqLoginImpl with DiagnosticableTreeMixin implements _ReqLogin {
  const _$ReqLoginImpl({required this.id, required this.pw});

  factory _$ReqLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReqLoginImplFromJson(json);

  @override
  final String id;
  @override
  final String pw;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReqLogin(id: $id, pw: $pw)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReqLogin'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('pw', pw));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqLoginImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pw, pw) || other.pw == pw));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, pw);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqLoginImplCopyWith<_$ReqLoginImpl> get copyWith =>
      __$$ReqLoginImplCopyWithImpl<_$ReqLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReqLoginImplToJson(
      this,
    );
  }
}

abstract class _ReqLogin implements ReqLogin {
  const factory _ReqLogin(
      {required final String id, required final String pw}) = _$ReqLoginImpl;

  factory _ReqLogin.fromJson(Map<String, dynamic> json) =
      _$ReqLoginImpl.fromJson;

  @override
  String get id;
  @override
  String get pw;
  @override
  @JsonKey(ignore: true)
  _$$ReqLoginImplCopyWith<_$ReqLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResLogin _$ResLoginFromJson(Map<String, dynamic> json) {
  return _ResLogin.fromJson(json);
}

/// @nodoc
mixin _$ResLogin {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResLoginCopyWith<ResLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResLoginCopyWith<$Res> {
  factory $ResLoginCopyWith(ResLogin value, $Res Function(ResLogin) then) =
      _$ResLoginCopyWithImpl<$Res, ResLogin>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$ResLoginCopyWithImpl<$Res, $Val extends ResLogin>
    implements $ResLoginCopyWith<$Res> {
  _$ResLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResLoginImplCopyWith<$Res>
    implements $ResLoginCopyWith<$Res> {
  factory _$$ResLoginImplCopyWith(
          _$ResLoginImpl value, $Res Function(_$ResLoginImpl) then) =
      __$$ResLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$ResLoginImplCopyWithImpl<$Res>
    extends _$ResLoginCopyWithImpl<$Res, _$ResLoginImpl>
    implements _$$ResLoginImplCopyWith<$Res> {
  __$$ResLoginImplCopyWithImpl(
      _$ResLoginImpl _value, $Res Function(_$ResLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$ResLoginImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResLoginImpl with DiagnosticableTreeMixin implements _ResLogin {
  const _$ResLoginImpl({required this.accessToken, required this.refreshToken});

  factory _$ResLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResLoginImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResLogin(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResLogin'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResLoginImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResLoginImplCopyWith<_$ResLoginImpl> get copyWith =>
      __$$ResLoginImplCopyWithImpl<_$ResLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResLoginImplToJson(
      this,
    );
  }
}

abstract class _ResLogin implements ResLogin {
  const factory _ResLogin(
      {required final String accessToken,
      required final String refreshToken}) = _$ResLoginImpl;

  factory _ResLogin.fromJson(Map<String, dynamic> json) =
      _$ResLoginImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$ResLoginImplCopyWith<_$ResLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
