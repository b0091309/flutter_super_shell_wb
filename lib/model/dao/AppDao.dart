import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:super_shell/model/net/Address.dart';
import 'package:super_shell/pages/AppUpdateBean.dart';
import 'package:flutter_tool_pkg/model/net/ResultData.dart';
import 'package:flutter_tool_pkg/model/net/Api.dart';
/**
 * Created by guoshuyu
 * Date: 2018-07-16
 */

class AppDao {
  /**
   * 版本更新
   */

  static Future<ResultData> checkUpdate(version) {
    var isIOS = Platform.isIOS;
    Map<String, String> header = {'loginType': isIOS ? "IOS" : "ANDROID"};
    Map<String, String> param = {'v': version};

    var toJson = (res) => AppUpdateBean.fromJson(res);
    var http = new HttpNewManager<AppUpdateBean>(Address.POST,header: header);
    return http.netFetch(
        Address.checkAppUpdate(), param, toJson);
  }

  static Future<ResultData> initDomainList(host) {
    var http = new HttpNewManager<List<dynamic>>(Address.GET);
    return http.netFetch(Address.initDomainList(host), null, null);
  }
}
