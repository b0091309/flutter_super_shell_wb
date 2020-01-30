import 'package:json_annotation/json_annotation.dart';

part 'ErrorFeedBackBean.g.dart';


@JsonSerializable()
class ErrorFeedBackBean extends Object {

  @JsonKey(name: 'immeId')
  String immeId;
  @JsonKey(name: 'device')
  String device;
  @JsonKey(name: 'url')
  String url;
  @JsonKey(name: 'group')
  String group;
  @JsonKey(name: 'type')
  String type;
  @JsonKey(name: 'msg')
  String msg;

  ErrorFeedBackBean(this.immeId,this.device,this.url,this.group,this.type,this.msg,);

  factory ErrorFeedBackBean.fromJson(Map<String, dynamic> srcJson) => _$ErrorFeedBackBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ErrorFeedBackBeanToJson(this);

}


