import 'dart:convert';

class BaseWsResp<T> {
  String type;
  Map<String,dynamic> data;

  factory BaseWsResp(jsonStr, Function buildFun) => jsonStr is String
      ? BaseWsResp.fromJson(json.decode(jsonStr), buildFun)
      : BaseWsResp.fromJson(jsonStr, buildFun);

//
  BaseWsResp.fromJson(jsonRes, Function buildFun) {
    type = jsonRes['type'];

    /// 这里可以做code和msg的处理逻辑
    if (jsonRes['data'] != null) {
      if (buildFun != null) {
        data = buildFun(jsonRes['data']);
      } else {
        data = jsonRes['data'];
      }
    }
  }

  BaseWsResp.sendJson(type, data) {
    this.type = type;
    this.data = data;
  }

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'type': this.type, 'data': this.data ==null? Map():this.data};
}
