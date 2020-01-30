import 'dart:convert';
import 'dart:io';

import 'package:super_shell/model/local/LSApp.dart';
import 'package:super_shell/model/net/Address.dart';
import 'package:flutter_tool_pkg/model/local/LocalStorage.dart';
import 'package:flutter_tool_pkg/model/net/Api.dart';
import 'package:flutter_tool_pkg/model/net/ResultData.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDao {
  static Future<ResultData> sendRegisterWithSimpleInfo(username, password,
      {String headAvator = '1'}) async {
    var mac = await LocalStorage.get(LSApp.APP_DEVICE_MAC);
    var dId = await LocalStorage.get(LSApp.APP_DEVICE_ID);
    Map requestParams = {
      'username': username,
      'password': password,
      'headPortrait': headAvator,
      'hash': 'c3lzemQxNjg4MTk1MDE1MTcxMjA5ODU2MDY=',
      "brand": '$mac',
      "hardware": '$dId'
    };

    ///TODO 需要支持直接回传JSON
    var http = new HttpNewManager<Map<String, dynamic>>(Address.POST);

    return http.netFetch(Address.sendRegisterSimpleInfo(), requestParams, null);
  }


  static sendLogout(store) {
    LocalStorage.save(LSApp.USER_NAME, "");
    LocalStorage.save(LSApp.USER_PWD, "");
    LocalStorage.save(LocalStorage.USER_TOKEN, "");
  }


}
