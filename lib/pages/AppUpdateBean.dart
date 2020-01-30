import 'package:json_annotation/json_annotation.dart';

part 'AppUpdateBean.g.dart';

@JsonSerializable()
class AppUpdateBean extends Object {
  @JsonKey(name: 'version')
  String version;

  @JsonKey(name: 'bundleUrl')
  String bundleUrl;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'isforce')
  bool isforce;

  @JsonKey(name: 'description')
  String description;

  AppUpdateBean(
    this.version,
    this.bundleUrl,
    this.url,
    this.isforce,
    this.description,
  );

  factory AppUpdateBean.fromJson(Map<String, dynamic> srcJson) =>
      _$AppUpdateBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AppUpdateBeanToJson(this);
}
