import 'dart:convert';

import 'package:super_shell/model/utils/NavigatorUtils.dart';
import 'package:super_shell/pages/WelcomePage.dart';
import 'package:super_shell/pages/bean/DomainHostBean.dart';
import 'package:super_shell/pages/webview/BaseWebView.dart';
import 'package:super_shell/pages/webview/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tool_pkg/model/event/HttpErrorEvent.dart';
import 'package:flutter_tool_pkg/model/net/Api.dart';
import 'package:flutter_tool_pkg/model/net/Code.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter_tool_pkg/widget/base/state/BaseWidgetForStateless.dart';
import 'package:flutter_tool_pkg/model/local/LocalStorage.dart';

import 'package:permission_handler/permission_handler.dart';


void main() {
  runApp(new FlutterChatApp());
  getPermissionList().then((value) {
    value.forEach((key, value) {
      print("Key=>" + key.toString() + "||| Value=>" + value.toString());
    });
  });
}

Future<Map<PermissionGroup, PermissionStatus>> getPermissionList() async {
  return await PermissionHandler()
      .requestPermissions([PermissionGroup.storage]);
}

Future<File> _getLandingFile() async {
  String dir = (await getApplicationDocumentsDirectory()).path;
  return new File('$dir/LandingInformation');
}

class FlutterChatApp extends BaseWidgetForStateless {
  FlutterChatApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// 通过 StoreProvider 应用 store
    return new MaterialApp(
      routes: {
//        NavigatorUtils.NAVI_WELCOME: (context) => WelcomePage(),
//        NavigatorUtils.NAVI_WELCOME: (context) => MyApp2()
      },
      onGenerateRoute: (setting) {
        var args = setting.arguments;
        Widget page = null;
        if (args != null) {
          /***
           * 帶參數的
           */
          var data = args as List<dynamic>;
          switch (setting.name) {
            case NavigatorUtils.NAVI_WB_VIEW:
//              page = new test();
//              page = new BaseWebView(data[0], data[1]);
              break;
          }
        } else {
          /***
           * 不帶參數的
           */
          switch (setting.name) {
          }
        }
        if (page != null) {
          return wrapRoute(page);
        } else {
          String unknownRoute = setting.name;
          print('跳转尚未設定=${unknownRoute}');
        }
      },
      onUnknownRoute: (RouteSettings setting) {
        String unknownRoute = setting.name;
        print('跳转错误=${unknownRoute}');
      },
      home: WelcomePage(),
    );
  }

  wrapRoute(Widget body) {
    return MaterialPageRoute(builder: (context) {
      return body;
    });
  }
}

class ErrorHandler extends StatefulWidget {
  final Widget child;

  ErrorHandler(this.child);

  @override
  _ErrorHandlerState createState() => _ErrorHandlerState();
}

class _ErrorHandlerState extends State<ErrorHandler> {
  StreamSubscription stream;

  @override
  void initState() {
    super.initState();
    stream = Code.eventBus.on<HttpErrorEvent>().listen((event) {});
  }

  @override
  void dispose() {
    super.dispose();
    if (stream != null) {
      stream.cancel();
      stream = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
