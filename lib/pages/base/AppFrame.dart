import 'package:super_shell/res/style/AppStyle.dart';
import 'package:flutter_tool_pkg/widget/base/BaseAppPage.dart';
import 'package:flutter/material.dart';

class AppFrame extends StatelessWidget {
  final Widget title;
  final PreferredSizeWidget appBarBottom;
  final Widget childWidget;
  final Widget bottomWidget;
  final Color childBackground;
  final WillPopCallback willPopListener;

  AppFrame(
      {Key key,
      this.title,
      this.childWidget,
      this.bottomWidget,
      this.appBarBottom,
      this.childBackground,
      this.willPopListener})
      : super();

  @override
  Widget build(BuildContext context) {
    return BaseAppFrame(ImageAppSet.ASSET_TOPBAR_BG,
        key: key,
        title: this.title,
        childWidget: this.childWidget,
        bottomWidget: this.bottomWidget,
        appBarBottom: this.appBarBottom,
        childBackground: this.childBackground,
        willPopListener: this.willPopListener);
  }
}
