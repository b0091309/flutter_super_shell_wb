import 'package:json_annotation/json_annotation.dart';

part 'DomainHostBean.g.dart';

List<DomainHostBean> getDomainHostList(List<dynamic> list){
  List<DomainHostBean> result = [];
  list.forEach((item){
    result.add(DomainHostBean.fromJson(item));
  });
  return result;
}
@JsonSerializable()
class DomainHostBean extends Object {
  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'lastPingState')
  int lastPingState;

  @JsonKey(name: 'lastUpdate')
  String lastUpdate;

  @JsonKey(name: 'pingTotalTimes')
  int pingTotalTimes;

  @JsonKey(name: 'pingCorrectTimes')
  int pingCorrectTimes;

  DomainHostBean(
    this.url,
    this.lastPingState,
    this.lastUpdate,
    this.pingTotalTimes,
    this.pingCorrectTimes,
  );

  factory DomainHostBean.fromJson(Map<String, dynamic> srcJson) =>
      _$DomainHostBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DomainHostBeanToJson(this);

  DomainHostBean.clone(DomainHostBean r)
      : this(r.url, r.lastPingState, r.lastUpdate, r.pingTotalTimes,
            r.pingCorrectTimes);
}
