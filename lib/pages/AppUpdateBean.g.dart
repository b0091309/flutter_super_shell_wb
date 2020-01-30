// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppUpdateBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUpdateBean _$AppUpdateBeanFromJson(Map<String, dynamic> json) {
  return AppUpdateBean(
      json['version'] as String,
      json['bundleUrl'] as String,
      json['url'] as String,
      json['isforce'] as bool,
      json['description'] as String);
}

Map<String, dynamic> _$AppUpdateBeanToJson(AppUpdateBean instance) =>
    <String, dynamic>{
      'version': instance.version,
      'bundleUrl': instance.bundleUrl,
      'url': instance.url,
      'isforce': instance.isforce,
      'description': instance.description
    };
