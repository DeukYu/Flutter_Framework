import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'protocol.freezed.dart';

part 'protocol.g.dart';

@freezed
class ErrorInfo with _$ErrorInfo {
  const factory ErrorInfo({
    required bool success,
    required int code,
    required String desc,
  }) = _ErrorInfo;

  factory ErrorInfo.fromJson(Map<String, dynamic> json) =>
      _$ErrorInfoFromJson(json);
}

@freezed
class ReqLogin with _$ReqLogin {
  const factory ReqLogin({
    required String id,
    required String pw,
  }) = _ReqLogin;

  factory ReqLogin.fromJson(Map<String, dynamic> json) =>
      _$ReqLoginFromJson(json);
}

@freezed
class ResLogin with _$ResLogin {
  const factory ResLogin({
    required String access_token,
    required String refresh_token,
  }) = _ResLogin;

  factory ResLogin.fromJson(Map<String, dynamic> json) =>
      _$ResLoginFromJson(json);
}
