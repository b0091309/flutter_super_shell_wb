import 'package:flutter/material.dart';
import 'package:flutter_tool_pkg/res/style/BaseStyle.dart';

class TxAppStyle {
  static const FORM_TITLE =
      TextStyle(color: ColorSet.black444, fontSize: Dimen.normalSize);

  static var FORM_DESC =
      TextStyle(color: ColorSet.black666, fontSize: Dimen.smallSize);
}

class DimenAppSet extends Dimen {
  ///以下对于 ICONFONT 的图标大小
  static const double icTitleSize_u = 42.0;

  static const double icTitleSize = 40.0;
  static const double icTitleSize_d = 38.0;

  static const double icLargeSize_u = 37.0;
  static const double icLargeSize = 35.0;
  static const double icLargeSize_d = 33.0;

  static const double icNormal_u = 32.0;
  static const double icNormal = 30.0;
  static const double icNormal_d = 28.0;

  static const double icSmall_u = 27.0;
  static const double icSmall = 25.0;
  static const double icSmall_d = 23.0;

  static const double icTiny_u = 22.0;
  static const double icTiny = 20.0;
  static const double icTiny_d = 18.0;

  static const double icBottom_u = 16.0;
  static const double icBottom = 14.0;
  static const double icBottom_d = 12.0;

  ///以下数字对于字体大小
  static const double headerSize_u = 34.0;
  static const double headerSize = 33.0;
  static const double headerSize_d = 32.0;

  static const double titleSize_u = 31.0;
  static const double titleSize = 30.0;
  static const double titleSize_d = 29.0;

  static const double lagerSize_u = 28.0;
  static const double lagerSize = 27.0;
  static const double lagerSize_d = 26.0;

  static const double bigSize_u = 25.0;
  static const double bigSize = 24.0;
  static const double bigSize_d = 23.0;

  ///目测中间字体大小
  static const double normalSize_u = 22.0;
  static const double normalSize = 21.0;
  static const double normalSize_d = 20.0;

  static const double middleSize_u = 19.0;
  static const double middleSize = 18.0;
  static const double middleSize_d = 17.0;

  static const double smallSize_u = 16.0;
  static const double smallSize = 15.0;
  static const double smallSize_d = 14.0;

  static const double tinySize_u = 13.0;
  static const double tinySize = 12.0;
  static const double tinySize_d = 11.0;
}

class AssetAppSet extends AssetSet {
  static const String JSON_FILE_CHINA_CITY = 'static/json/china.json';
}

class IconAppSet extends IconSet {
  static const String CHAT_ICON = 'chatIconFont';

  static const IconData CHAT_BTN_SEND =
      const IconData(0xe68c, fontFamily: CHAT_ICON);

  static const IconData CHAT_BTN_IMAGE =
      const IconData(0xe68b, fontFamily: CHAT_ICON);
  static const IconData LOGIN_IC_USER =
      const IconData(0xe689, fontFamily: CHAT_ICON);
  static const IconData LOGIN_IC_PWD =
      const IconData(0xe68a, fontFamily: CHAT_ICON);

  static const IconData LOGIN_IC_LOGO =
      const IconData(0xe687, fontFamily: CHAT_ICON);

  static const IconData LOGIN_IC_CUSTOMER_SERVICE =
      const IconData(0xe686, fontFamily: CHAT_ICON);

  static const IconData APP_PAGE_BACK =
  const IconData(0xe684, fontFamily: CHAT_ICON);
}

class ImageAppSet extends ImageSet {
  ///Image.network系列的命名方式
  static const String NET_TEST =
      'https://raw.githubusercontent.com/CarGuo/GSYGithubAppFlutter/master/static/images/logo.png';

  ///Image.asset 系列的命名方式

  static const String ASSET_LOGIN_BTN= 'static/images/main/login_btn.png';

  static const String ASSET_TOPBAR_BG = 'static/images/main/topbar_bg.png';

  static const String ASSET_LOGIN_BG = 'static/images/main/login_bg.png';

  static const String ASSET_WELCOME_BG = 'static/images/main/welcome_bg.png';
}

class ColorAppSet extends ColorSet {
  static const Color black111 = Color(0xCC1c1c1c);
  static const Color black222 = Color(0xCC222222);
  static const Color black333 = Color(0xCC232323);
  static const Color black344 = Color(0xFF2c2c2c);
  static const Color black444 = Color(0xFF444444);
  static const Color black555 = Color(0xFF555555);
  static const Color black666 = Color(0xFF666666);
  static const Color black777 = Color(0xFF777777);
  static const Color black888 = Color(0xFF888888);
  static const Color black999 = Color(0xFF999999);
  static const Color black40 = Color(0xCC404040);
  static const Color black78 = Color(0xFF787878);

  static const Color transparent = Color(0xFF00000000);
  static const Color transparent_black_22 = Color(0x22000000);
  static const Color transparent_black_44 = Color(0x44000000);
  static const Color transparent_black_66 = Color(0x66000000);
  static const Color transparent_black_88 = Color(0x88000000);
  static const Color transparent_black_AA = Color(0xAA000000);
  static const Color transparent_black_CC = Color(0xCC000000);
  static const Color transparent_black_EE = Color(0xEE000000);
  static const Color transparent_black_GG = Color(0xFF000000);
  static const Color transparent_white_22 = Color(0x22FFFFFF);
  static const Color transparent_white_44 = Color(0x44FFFFFF);
  static const Color transparent_white_66 = Color(0x66FFFFFF);
  static const Color transparent_white_88 = Color(0x88FFFFFF);
  static const Color transparent_white_AA = Color(0xAAFFFFFF);
  static const Color transparent_white_CC = Color(0xCCFFFFFF);
  static const Color transparent_white_EE = Color(0xEEFFFFFF);
  static const Color transparent_white_GG = Color(0xFFFFFFFF);

  static const Color light_gray = Color(0xFFfff5f5f5);
  static const Color hColor = Color(0xFFbfbfbf);
  static const Color white_hColor = Color(0xFFa6a6a6);

  /// 默认背景颜色 -->
  static const Color wjf_bg = Color(0xFFEEEEEE);
  static const Color white = Color(0xFFFFFFFF);

  ///白色 -->
  static const Color ivory = Color(0xFFFFFFF0);

  ///象牙色 -->
  static const Color lightyellow = Color(0xFFFFFFE0);

  ///亮黄色 -->
  static const Color yellow = Color(0xFFFFFF00);

  ///黄色 -->
  static const Color snow = Color(0xFFFFFAFA);

  ///雪白色 -->
  static const Color floralwhite = Color(0xFFFFFAF0);

  ///花白色 -->
  static const Color lemonchiffon = Color(0xFFFFFACD);

  ///柠檬绸色 -->
  static const Color cornsilk = Color(0xFFFFF8DC);

  ///米绸色 -->
  static const Color seashell = Color(0xFFFFF5EE);

  ///海贝色 -->
  static const Color lavenderblush = Color(0xFFFFF0F5);

  ///淡紫红 -->
  static const Color papayawhip = Color(0xFFFFEFD5);

  ///番木色 -->
  static const Color blanchedalmond = Color(0xFFFFEBCD);

  ///白杏色 -->
  static const Color mistyrose = Color(0xFFFFE4E1);

  ///浅玫瑰色 -->
  static const Color bisque = Color(0xFFFFE4C4);

  ///桔黄色 -->
  static const Color moccasin = Color(0xFFFFE4B5);

  ///鹿皮色 -->
  static const Color navajowhite = Color(0xFFFFDEAD);

  ///纳瓦白 -->
  static const Color peachpuff = Color(0xFFFFDAB9);

  ///桃色 -->
  static const Color gold = Color(0xFFFFD700);

  ///金色 -->
  static const Color pink = Color(0xFFFFC0CB);

  ///粉红色 -->
  static const Color lightpink = Color(0xFFFFB6C1);

  ///亮粉红色 -->
  static const Color orange = Color(0xFFFFA500);

  ///橙色 -->
  static const Color lightsalmon = Color(0xFFFFA07A);

  ///亮肉色 -->
  static const Color darkorange = Color(0xFFFF8C00);

  ///暗桔黄色 -->
  static const Color coral = Color(0xFFFF7F50);

  ///珊瑚色 -->
  static const Color hotpink = Color(0xFFFF69B4);

  ///热粉红色 -->
  static const Color tomato = Color(0xFFFF6347);

  ///西红柿色 -->
  static const Color orangered = Color(0xFFFF4500);

  ///红橙色 -->
  static const Color deeppink = Color(0xFFFF1493);

  ///深粉红色 -->
  static const Color fuchsia = Color(0xFFFF00FF);

  ///紫红色 -->
  static const Color magenta = Color(0xFFFF00FF);

  ///红紫色 -->
  static const Color red = Color(0xFFFF0000);

  ///红色 -->
  static const Color oldlace = Color(0xFFFDF5E6);

  ///老花色 -->
  static const Color lightgoldenrodyellow = Color(0xFFFAFAD2);

  ///亮金黄色 -->
  static const Color linen = Color(0xFFFAF0E6);

  ///亚麻色 -->
  static const Color antiquewhite = Color(0xFFFAEBD7);

  ///古董白 -->
  static const Color salmon = Color(0xFFFA8072);

  ///鲜肉色 -->
  static const Color ghostwhite = Color(0xFFF8F8FF);

  ///幽灵白 -->
  static const Color mColorcream = Color(0xFFF5FFFA);

  ///薄荷色 -->
  static const Color whitesmoke = Color(0xFFF5F5F5);

  ///烟白色 -->
  static const Color beige = Color(0xFFF5F5DC);

  ///米色 -->
  static const Color wheat = Color(0xFFF5DEB3);

  ///浅黄色 -->
  static const Color sandybrown = Color(0xFFF4A460);

  ///沙褐色 -->
  static const Color azure = Color(0xFFF0FFFF);

  ///天蓝色 -->
  static const Color honeydew = Color(0xFFF0FFF0);

  ///蜜色 -->
  static const Color aliceblue = Color(0xFFF0F8FF);

  ///艾利斯兰 -->
  static const Color khaki = Color(0xFFF0E68C);

  ///黄褐色 -->
  static const Color lightcoral = Color(0xFFF08080);

  ///亮珊瑚色 -->
  static const Color palegoldenrod = Color(0xFFEEE8AA);

  ///苍麒麟色 -->
  static const Color violet = Color(0xFFEE82EE);

  ///紫罗兰色 -->
  static const Color darksalmon = Color(0xFFE9967A);

  ///暗肉色 -->
  static const Color lavender = Color(0xFFE6E6FA);

  ///淡紫色 -->
  static const Color lightcyan = Color(0xFFE0FFFF);

  ///亮青色 -->
  static const Color burlywood = Color(0xFFDEB887);

  ///实木色 -->
  static const Color plum = Color(0xFFDDA0DD);

  ///洋李色 -->
  static const Color gainsboro = Color(0xFFDCDCDC);

  ///淡灰色 -->
  static const Color crimson = Color(0xFFDC143C);

  ///暗深红色 -->
  static const Color palevioletred = Color(0xFFDB7093);

  ///苍紫罗兰色-->
  static const Color goldenrod = Color(0xFFDAA520);

  ///金麒麟色 -->
  static const Color orchid = Color(0xFFDA70D6);

  ///淡紫色 -->
  static const Color thistle = Color(0xFFD8BFD8);

  ///蓟色 -->
  static const Color lightgrey = Color(0xFFD3D3D3);

  ///亮灰色 -->
  static const Color tan = Color(0xFFD2B48C);

  ///茶色 -->
  static const Color chocolate = Color(0xFFD2691E);

  ///巧可力色 -->
  static const Color peru = Color(0xFFCD853F);

  ///秘鲁色 -->
  static const Color indianred = Color(0xFFCD5C5C);

  ///印第安红 -->
  static const Color mediumvioletred = Color(0xFFC71585);

  ///中紫罗兰色 -->
  static const Color silver = Color(0xFFC0C0C0);

  ///银色 -->
  static const Color darkkhaki = Color(0xFFBDB76B);

  /// 暗黄褐色 -->
  static const Color rosybrown = Color(0xFFBC8F8F);

  ///褐玫瑰红-->
  static const Color mediumorchid = Color(0xFFBA55D3);

  ///中粉紫色 -->
  static const Color darkgoldenrod = Color(0xFFB8860B);

  ///暗金黄色 -->
  static const Color firebrick = Color(0xFFB22222);

  ///火砖色 -->
  static const Color powderblue = Color(0xFFB0E0E6);

  ///粉蓝色 -->
  static const Color lightsteelblue = Color(0xFFB0C4DE);

  ///亮钢兰色 -->
  static const Color paleturquoise = Color(0xFFAFEEEE);

  ///苍宝石绿 -->
  static const Color greenyellow = Color(0xFFADFF2F);

  ///黄绿色 -->
  static const Color lightblue = Color(0xFFADD8E6);

  ///亮蓝色 -->
  static const Color darkergray = Color(0xFF878787);

  ///暗灰色 -->
  static const Color darkgray = Color(0xFFA9A9A9);

  ///暗灰色 -->
  static const Color lightnormal = Color(0xFFB8B2D5);

  ///暗灰色 -->
  static const Color lightgray = Color(0xFFc3c3c3);

  ///浅灰色 -->
  static const Color brown = Color(0xFFA52A2A);

  ///褐色 -->
  static const Color sienna = Color(0xFFA0522D);

  ///赭色 -->
  static const Color darkorchid = Color(0xFF9932CC);

  ///暗紫色 -->
  static const Color palegreen = Color(0xFF98FB98);

  ///苍绿色 -->
  static const Color darkviolet = Color(0xFF9400D3);

  ///暗紫罗兰色 -->
  static const Color mediumpurple = Color(0xFF9370DB);

  ///中紫色 -->
  static const Color lightgreen = Color(0xFF90EE90);

  ///亮绿色 -->
  static const Color darkseagreen = Color(0xFF8FBC8F);

  ///暗海兰色 -->
  static const Color saddlebrown = Color(0xFF8B4513);

  ///重褐色 -->
  static const Color darkmagenta = Color(0xFF8B008B);

  ///暗洋红 -->
  static const Color darkred = Color(0xFF8B0000);

  ///暗红色 -->
  static const Color blueviolet = Color(0xFF8A2BE2);

  /// 紫罗兰蓝色-->
  static const Color lightskyblue = Color(0xFF87CEFA);

  ///亮天蓝色-->
  static const Color skyblue = Color(0xFF87CEEB);

  ///天蓝色 -->
  static const Color gray = Color(0xFFE6E6E6);

  ///灰白色 -->
  static const Color grey = Color(0xFF808080);

  ///灰色 -->
  static const Color olive = Color(0xFF808000);

  ///橄榄色 -->
  static const Color purple = Color(0xFF800080);

  ///紫色 -->
  static const Color maroon = Color(0xFF800000);

  ///粟色 -->
  static const Color aquamarine = Color(0xFF7FFFD4);

  ///碧绿色 -->
  static const Color chartreuse = Color(0xFF7FFF00);

  ///黄绿色 -->
  static const Color lawngreen = Color(0xFF7CFC00);

  ///草绿色 -->
  static const Color mediumslateblue = Color(0xFF7B68EE);

  ///中暗蓝色 -->
  static const Color lightslategray = Color(0xFF778899);

  ///亮蓝灰 -->
  static const Color lightslategrey = Color(0xFF778899);

  ///亮蓝灰 -->
  static const Color slategray = Color(0xFF708090);

  ///灰石色 -->
  static const Color slategrey = Color(0xFF708090);

  ///灰石色 -->
  static const Color olivedrab = Color(0xFF6B8E23);

  ///深绿褐色 -->
  static const Color slateblue = Color(0xFF6A5ACD);

  ///石蓝色 -->
  static const Color dimgray = Color(0xFF696969);

  ///暗灰色 -->
  static const Color dimgrey = Color(0xFF696969);

  ///暗灰色 -->
  static const Color mediumaquamarine = Color(0xFF66CDAA);

  ///中绿色-->
  static const Color cornflowerblue = Color(0xFF6495ED);

  ///菊兰色 -->
  static const Color cadetblue = Color(0xFF5F9EA0);

  ///军兰色 -->
  static const Color darkolivegreen = Color(0xFF556B2F);

  /// 暗橄榄绿 -->
  static const Color indigo = Color(0xFF4B0082);

  ///靛青色 -->
  static const Color mediumturquoise = Color(0xFF48D1CC);

  ///中绿宝石-->
  static const Color darkslateblue = Color(0xFF483D8B);

  ///暗灰蓝色 -->
  static const Color steelblue = Color(0xFF4682B4);

  ///钢兰色 -->
  static const Color royalblue = Color(0xFF4169E1);

  ///皇家蓝 -->
  static const Color turquoise = Color(0xFF40E0D0);

  ///青绿色 -->
  static const Color mediumseagreen = Color(0xFF3CB371);

  ///中海蓝 -->
  static const Color limegreen = Color(0xFF32CD32);

  ///橙绿色 -->
  static const Color darkslategray = Color(0xFF2F4F4F);

  ///暗瓦灰色 -->
  static const Color darkslategrey = Color(0xFF2F4F4F);

  ///暗瓦灰色 -->
  static const Color seagreen = Color(0xFF2E8B57);

  ///海绿色 -->
  static const Color forestgreen = Color(0xFF228B22);

  ///森林绿 -->
  static const Color lightseagreen = Color(0xFF20B2AA);

  ///亮海蓝色 -->
  static const Color dodgerblue = Color(0xFF1E90FF);

  ///闪兰色 -->
  static const Color midnightblue = Color(0xFF191970);

  ///中灰兰色 -->
  static const Color aqua = Color(0xFF00FFFF);

  ///浅绿色 -->
  static const Color cyan = Color(0xFF00FFFF);

  ///青色 -->
  static const Color springgreen = Color(0xFF00FF7F);

  ///春绿色 -->
  static const Color lime = Color(0xFF00FF00);

  ///酸橙色 -->
  static const Color mediumspringgreen = Color(0xFF00FA9A);

  ///中春绿色 -->
  static const Color darkturquoise = Color(0xFF00CED1);

  ///暗宝石绿 -->
  static const Color deepskyblue = Color(0xFF00BFFF);

  ///深天蓝色 -->
  static const Color darkcyan = Color(0xFF008B8B);

  ///暗青色 -->
  static const Color teal = Color(0xFF008080);

  ///水鸭色 -->
  static const Color green = Color(0xFF008000);

  ///绿色 -->
  static const Color darkgreen = Color(0xFF006400);

  ///暗绿色 -->
  static const Color blue = Color(0xFF0000FF);

  ///蓝色 -->
  static const Color mediumblue = Color(0xFF0000CD);

  ///中兰色 -->
  static const Color darkblue = Color(0xFF00008B);

  ///暗蓝色 -->
  static const Color navy = Color(0xFF000080);

  ///海军色 -->
  static const Color black = Color(0xFF000000);

  ///黑色 -->
  static const Color blue_search = Color(0xFF5794FF);

  /// 其他颜色 -->
  static const Color deepGray = Color(0xFF282828);
  static const Color TestWhite = Color(0xFFFFFFFF);
  static const Color page_normal_color = Color(0xFFd2d2d2);
  static const Color page_select_color = Color(0xFF5a7ba7);
  static const Color default_img_bg = Color(0xFFDADADA);
  static const Color left_menu_bg = Color(0xFF262626);
  static const Color line_color = Color(0xFFcecece);
  static const Color DarkRed = Color(0xFF8d2319);
  static const Color LightBlue = Color(0xFFbbe6f7);
  static const Color DarkBlue = Color(0xFF113871);
  static const Color CLR616161 = Color(0xFF616161);
  static const Color light_orange = Color(0xFFffcc99);

  /// 更深灰色 -->

  /// 金色字体 -->
  static const Color gold_color = Color(0xFFfbd01f);
  static const Color graylight = Color(0xFFF3F3F3);
  static const Color golden_yellow_color = Color(0xFFfffe00);
  static const Color image_bottom = Color(0xFF00000000);
  static const Color person_center = Color(0xFFf7f6f6);
  static const Color person_center_line_color = Color(0xFFacacac);
  static const Color regist_hColor_color = Color(0xFFc8c8c8);
  static const Color school_list_item_bg = Color(0xFFf7f6f6);
  static const Color text_color = Color(0xFF956134);
  static const Color cancel_tv = Color(0xFFB8B8B7);
  static const Color loading_title_color = Color(0xFFFF909397);
  static const Color loading_subtitle_color = Color(0xFFFFA0A3A7);

  /// 浅灰色 -->
  static const Color wjf_font_light = Color(0xFF666666);
  static const Color wjf_font_dark = Color(0xFF333333);

  static const Color primary = Color(0xFFF14F48);
  static const Color primaryLight = Color(0xFFf04f48);
  static const Color primaryDark = Color(0xFF121917);

  static const Color divider = Color(0xFFdddddd);

  static const Color defaultBg = Color(0xFFf4f4f4);

  static const Color BALL_RED = Color(0xFFff0000);
  static const Color BALL_GREEN = Color(0xFF00d215);
  static const Color BALL_BLUE = Color(0xFF008aff);
}

class ShapeAppSet extends ShapeSet {
  static const _border = const BorderRadius.all(Radius.circular(5));
  static const dialogShape = RoundedRectangleBorder(borderRadius: _border);
}

class DecorationAppSet extends DecorationSet {
  static const _border = const BorderRadius.all(Radius.circular(10));

  static const dialogBg = const BoxDecoration(
    color: Colors.white,
    shape: BoxShape.rectangle,
    borderRadius: _border,
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10.0,
        offset: const Offset(0.0, 10.0),
      ),
    ],
  );

  static getLhcZodicBgDialog(bool isSelected) {
    var cr = isSelected ? ColorSet.white : Color(0xFFF5F5F5);
    var border = isSelected
        ? Border.all(color: ColorSet.primary, width: 2)
        : Border.all(color: ColorSet.gray);
    return BoxDecoration(
      color: cr,
      shape: BoxShape.rectangle,
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      border: border,
      boxShadow: [],
    );
  }

  static getLhcBgDialog(bool isSelected) {
    var cr = isSelected ? ColorSet.primary : ColorSet.gray;
    var shadow = isSelected
        ? BoxShadow(
            color: ColorSet.primary.withOpacity(0.5),
            blurRadius: 5.0,
            offset: const Offset(0.0, 5.0),
          )
        : BoxShadow(
            color: Colors.black26,
            blurRadius: 5.0,
            offset: const Offset(1.0, 1.0),
          );
    return BoxDecoration(
      color: cr,
      shape: BoxShape.rectangle,
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      boxShadow: [shadow],
    );
  }

  static gradientDialog(List<Color> gradientCr, BorderRadius br,
      {begin = Alignment.topCenter, end = Alignment.bottomCenter}) {
    return new BoxDecoration(
        gradient: new LinearGradient(
            begin: begin, end: Alignment.bottomCenter, colors: gradientCr),
        shape: BoxShape.rectangle,
        borderRadius: br);
  }

  static gradientLine(List<Color> gradientCr,
      {begin = Alignment.topCenter, end = Alignment.bottomCenter}) {
    return new BoxDecoration(
        gradient: new LinearGradient(
            begin: begin, end: Alignment.bottomCenter, colors: gradientCr),
        shape: BoxShape.rectangle);
  }
}
