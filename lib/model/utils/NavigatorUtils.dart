import 'dart:async';
import 'dart:io';

import 'package:super_shell/pages/webview/BaseWebView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 导航栏
 * Created by guoshuyu
 * Date: 2018-07-16
 */
class NavigatorUtils {
  static const String NAVI_WELCOME = "/";
  static const String NAVI_HOME = "home";
  static const String NAVI_WB_VIEW = "webview";

  ///替换
  static pushReplacementNamed(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  ///切换无参数页面
  static pushNamed(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  ///主页
  static goHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, NAVI_HOME);
  }

  ///主页
  static goWebView(BuildContext context, url, title) {
    Navigator.pushNamed(context, NAVI_WB_VIEW,
        arguments: [url, title]);
  }

  ///全屏Web页面
  static Future<Null> goBaseWebView(
      BuildContext context, String url, String title) {
//    return Navigator.push(
//      context,
//      new MaterialPageRoute(
//        builder: (context) => new BaseWebView(url, title),
//      ),
//    );
  }
}
