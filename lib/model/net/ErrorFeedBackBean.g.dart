// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ErrorFeedBackBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorFeedBackBean _$ErrorFeedBackBeanFromJson(Map<String, dynamic> json) {
  return ErrorFeedBackBean(
      json['immeId'] as String,
      json['device'] as String,
      json['url'] as String,
      json['group'] as String,
      json['type'] as String,
      json['msg'] as String);
}

Map<String, dynamic> _$ErrorFeedBackBeanToJson(ErrorFeedBackBean instance) =>
    <String, dynamic>{
      'immeId': instance.immeId,
      'device': instance.device,
      'url': instance.url,
      'group': instance.group,
      'type': instance.type,
      'msg': instance.msg
    };
