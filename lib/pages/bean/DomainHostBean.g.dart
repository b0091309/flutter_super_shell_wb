// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DomainHostBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DomainHostBean _$DomainHostBeanFromJson(Map<String, dynamic> json) {
  return DomainHostBean(
      json['url'] as String,
      json['lastPingState'] as int,
      json['lastUpdate'] as String,
      json['pingTotalTimes'] as int,
      json['pingCorrectTimes'] as int);
}

Map<String, dynamic> _$DomainHostBeanToJson(DomainHostBean instance) =>
    <String, dynamic>{
      'url': instance.url,
      'lastPingState': instance.lastPingState,
      'lastUpdate': instance.lastUpdate,
      'pingTotalTimes': instance.pingTotalTimes,
      'pingCorrectTimes': instance.pingCorrectTimes
    };
