//import 'dart:io';
//
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter_tool_pkg/res/style/BaseStyle.dart';
//import 'package:flutter_tool_pkg/widget/base/BaseExpanded.dart';
//import 'package:flutter_tool_pkg/widget/base/BaseText.dart';
//import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
//import 'package:flutter_tool_pkg/widget/base/BaseRow.dart';
//
///**
// * webview版本
// * Created by guoshuyu
// * on 2018/7/27.
// */
//class BaseWebView extends StatelessWidget {
//  final String url;
//  final String title;
//
////  final OptionControl optionControl = new OptionControl();
//
//  BaseWebView(this.url, this.title);
//
//  _renderTitle() {
//    if (url == null || url.length == 0) {
//      return new BaseText(title);
//    }
//    return new BaseRow([
//      new Expanded(
//          child: new Container(
//        child: new BaseText(title),
//      )),
////      WebviewCommonOptionWidget(optionControl),
//    ]);
//  }
//
//  _noTitle(){
//    return new PreferredSize(child: new Container(color: ColorSet.lightblue), preferredSize: Size.fromHeight(0));
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    Widget wb = null;
//
//
//    if (title == null) {
//      wb =  new WebviewScaffoldWithFloatingBtn(
//        supportMultipleWindows: true,
//        withJavascript: true,
//        url: url,
////        withLocalUrl: true,
//        scrollBar: true,
//        appBar: _noTitle(),
//      );
//    } else {
//      wb =  new WebviewScaffoldWithFloatingBtn(
//        supportMultipleWindows: true,
//        withJavascript: true,
//        url: url,
//        scrollBar: true,
////        withLocalUrl: true,
//        appBar: new AppBar(
//          title: _renderTitle(),
//        ),
//      );
//    }
//
////    return wb;
//
//    return WillPopScope(
//      onWillPop: () {
//        if(Platform.isAndroid){
//          if(lastTap == 0){
//
//            lastTap = DateTime.now().millisecondsSinceEpoch;
////            Fluttertoast.showToast(msg: '双击返回键后离开App!');
//            return ;
//          }else{
//            var doubleClick = DateTime.now().millisecondsSinceEpoch;
//            var diff = doubleClick - lastTap;
//            if(diff < 3000){
//              SystemChannels.platform.invokeMethod('SystemNavigator.pop');
//            }else{
//              lastTap = DateTime.now().millisecondsSinceEpoch;
////              Fluttertoast.showToast(msg: '双击返回键后离开App!');
//            }
//          }
//        }
////        return _dialogExitApp(context);
//      },
//      child: wb,
//    );
////    optionControl.url = url;
//  }
//
//  int lastTap = 0;
//
//}
