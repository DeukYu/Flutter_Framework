// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protocol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorInfoImpl _$$ErrorInfoImplFromJson(Map<String, dynamic> json) =>
    _$ErrorInfoImpl(
      success: json['success'] as bool,
      code: json['code'] as int,
      desc: json['desc'] as String,
    );

Map<String, dynamic> _$$ErrorInfoImplToJson(_$ErrorInfoImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'code': instance.code,
      'desc': instance.desc,
    };

_$ReqLoginImpl _$$ReqLoginImplFromJson(Map<String, dynamic> json) =>
    _$ReqLoginImpl(
      id: json['id'] as String,
      pw: json['pw'] as String,
    );

Map<String, dynamic> _$$ReqLoginImplToJson(_$ReqLoginImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pw': instance.pw,
    };

_$ResLoginImpl _$$ResLoginImplFromJson(Map<String, dynamic> json) =>
    _$ResLoginImpl(
      access_token: json['access_token'] as String,
      refresh_token: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$ResLoginImplToJson(_$ResLoginImpl instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
    };
