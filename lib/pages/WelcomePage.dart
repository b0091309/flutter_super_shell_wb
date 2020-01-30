import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tool_pkg/model/local/LocalStorage.dart';
import 'package:flutter_tool_pkg/res/style/BaseStyle.dart';
import 'package:flutter_tool_pkg/widget/base/state/BaseWidgetForStateful.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_webview_plugin/src/javascript_channel.dart';

import 'package:flare_splash_screen/flare_splash_screen.dart';

/**
 * 欢迎页
 * Created by guoshuyu
 * Date: 2018-07-16
 */

class WelcomePage extends StatefulWidget {
  static final String sName = "/";

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends BaseWidgetForStateful<WelcomePage> {
  static const TAG = "WelcomePage";
  bool hadInit = false;
  var _onBack;
  Rect _rect;
  Timer _resizeTimer;
  StreamSubscription<WebViewStateChanged> _onStateChanged;

  final webviewReference = FlutterWebviewPlugin();

  @override
  void initState() {
    launch();
    var enableAutoRes = false;
    PermissionHandler()
        .checkPermissionStatus(PermissionGroup.storage)
        .then((value) {
          enableAutoRes = false;
          if (value == PermissionStatus.granted) {
            enableAutoRes = true;

          }
          webviewReference.autoDownloadResource(enableAutoRes);
        });
    setGoBack();
    super.initState();
    _goToMain();
  }

  setGoBack() {
    _onBack = webviewReference.onBack.listen((_) async {
      if (!mounted) {
        return;
      }
      // The willPop/pop pair here is equivalent to Navigator.maybePop(),
      // which is what's called from the flutter back button handler.
      final pop = await _topMostRoute.willPop();
      if (pop == RoutePopDisposition.pop) {
        // Close the webview if it's on the route at the top of the stack.
        final isOnTopMostRoute = _topMostRoute == ModalRoute.of(context);
        if (isOnTopMostRoute) {
          webviewReference.close();
        }
        Navigator.pop(context);
      }
    });
  }

  launch() {
    var url = 'http://208.109.11.39/dp01/Client/index.php?s=/Home/Public/login';
    if (Platform.isAndroid) {
      webviewReference.launch(url,
          withLocalUrl: true,
          ignoreSSLErrors: true,
          displayZoomControls: false,
          withLocalStorage: true,
          appCacheEnabled: false,
          debuggingEnabled: false,
          mediaPlaybackRequiresUserGesture: true,
          scrollBar: false,
          autoDownloadResource: false);
    } else {
      webviewReference.launch(url,
//            withLocalUrl: true,
//          ignoreSSLErrors: true,
//          displayZoomControls: false,
//          withLocalStorage: true,
//          appCacheEnabled: true,
//          mediaPlaybackRequiresUserGesture: true,
          scrollBar: false);
    }
    webviewReference.hide();
  }

  /// Equivalent to [Navigator.of(context)._history.last].
  Route<dynamic> get _topMostRoute {
    var topMost;
    Navigator.popUntil(context, (route) {
      topMost = route;
      return true;
    });
    return topMost;
  }

  _goToMain() async {
    print('WelcomePage-delay-BEFORE');
    Future.delayed(Duration(seconds: 4), () {
      webviewReference.show();
//        finishWbInit = true;
    });
    webviewReference.onStateChanged.listen((event) {
      print("page" + event.url + "_eventState=>" + event.type.toString());
      if (event.type == WebViewState.finishLoad) {
        webviewReference.show();
      }
    });
  }

  bool finishWbInit = false;

  @override
  Widget build(BuildContext context) {
    return SplashScreen.navigate(
      name: 'assets/splash.flr', // flr動畫檔路徑
      next: null, // 動畫結束後轉換頁面
      until: () => Future.delayed(Duration(seconds: 4)), //等待3秒
      startAnimation: 'Notifications', // 動畫名稱
    );
//      return new Container(
//        color: ColorSet.black,
//        child: new Image(
//          image: new AssetImage(ImageAppSet.ASSET_WELCOME_BG),
//          fit: BoxFit.fill,
//        ),
//      );
  }

//  Widget showWebViewPage() {
//    webviewReference.show();
//    return Scaffold(
//      body: _WebviewPlaceholder(
//        onRectChanged: (Rect value) {
//          if (_rect == null) {
//            _rect = value;
//            webviewReference.show();
//          } else {
//            if (_rect != value) {
//              _rect = value;
//              _resizeTimer?.cancel();
//              _resizeTimer = Timer(const Duration(milliseconds: 250), () {
//                // avoid resizing to fast when build is called multiple time
//                webviewReference.resize(_rect);
//              });
//            }
//          }
//        },
//        child: const Center(child: const CircularProgressIndicator()),
//      ),
//    );
//  }

  @override
  void dispose() {
    super.dispose();
    _onBack?.cancel();
    _resizeTimer?.cancel();
    webviewReference.close();
    _onStateChanged.cancel();
    webviewReference.dispose();
  }
}

class _WebviewPlaceholder extends SingleChildRenderObjectWidget {
  const _WebviewPlaceholder({
    Key key,
    @required this.onRectChanged,
    Widget child,
  }) : super(key: key, child: child);

  final ValueChanged<Rect> onRectChanged;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _WebviewPlaceholderRender(
      onRectChanged: onRectChanged,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, _WebviewPlaceholderRender renderObject) {
    renderObject..onRectChanged = onRectChanged;
  }
}

class _WebviewPlaceholderRender extends RenderProxyBox {
  _WebviewPlaceholderRender({
    RenderBox child,
    ValueChanged<Rect> onRectChanged,
  })  : _callback = onRectChanged,
        super(child);

  ValueChanged<Rect> _callback;
  Rect _rect;

  Rect get rect => _rect;

  set onRectChanged(ValueChanged<Rect> callback) {
    if (callback != _callback) {
      _callback = callback;
      notifyRect();
    }
  }

  void notifyRect() {
    if (_callback != null && _rect != null) {
      _callback(_rect);
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    super.paint(context, offset);
    final rect = offset & size;
    if (_rect != rect) {
      _rect = rect;
      notifyRect();
    }
  }
}
