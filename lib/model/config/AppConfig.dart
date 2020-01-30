import 'dart:async';
import 'dart:math';

import 'package:flutter_tool_pkg/model/config/BaseConfig.dart';

class AppConfig extends BaseConfig{


  static const DEBUG = true;
  static StreamSubscription webSocketMainStream;


  static isDebug(){
    return DEBUG;
  }

  static getPagingParam(int currentPage) {
    return {"max": BaseConfig.PAGE_SIZE, "offset": BaseConfig.PAGE_SIZE * (currentPage - 1)};
  }

  static printLog(log) {
    if (DEBUG) {
      print(log);
    }
  }

  static String urlEncodeMap(Map data) {
    return data.keys
        .map((key) =>
    "${Uri.encodeComponent(key)}=${Uri.encodeComponent(data[key].toString())}")
        .join("&");
  }



  static getMessageType(String annType) {
    print('channelKey${annType}');
    var titleMap = {
      "SYSTEM": '系统',
    };

    var vertify = '其他';
    titleMap.forEach((k, v) {
      print('v=>${k}');
      if (k.contains(annType) || k == annType) {
        vertify = v;
      }
    });
    return vertify;
  }

  static getAnnouncementType(String annType) {
    print('channelKey${annType}');
    var titleMap = {
      "ANNOUNCEMENT": '公告',
      'MAINTAIN': '维护',
      "ACTIVITY": '活动',
      "FESTIVAL": '节日',
      "NOTICE": '通知'
    };

    var vertify = '其他';
    titleMap.forEach((k, v) {
      print('v=>${k}');
      if (k.contains(annType) || k == annType) {
        vertify = v;
      }
    });
    return vertify;
  }

  static getBonusType(String bonusType) {
    print('channelKey${bonusType}');
    var titleMap = {
      "BET": '投注累计',
      "GAME": '游戏抽奖',
    };

    var vertify = '其他';
    titleMap.forEach((k, v) {
      print('v=>${k}');
      if (k.contains(bonusType) || k == bonusType) {
        vertify = v;
      }
    });
    return vertify;
  }

  static getBonusGameType(String bonusType) {
    if (bonusType == null) {
      return '';
    }
    print('channelKey${bonusType}');
    var titleMap = {
      "ROULETTE": '幸运轮盘',
    };

    var vertify = '';
    titleMap.forEach((k, v) {
      print('v=>${k}');
      if (k.contains(bonusType) || k == bonusType) {
        vertify = v;
      }
    });
    return vertify;
  }

  static getWithdrawStatusByKey(String channelKey) {
    print('channelKey${channelKey}');
    var titleMap = {
      "MEMBER_DEBIT": '用户',
    };

    var vertify = '';
    titleMap.forEach((k, v) {
      print('v=>${k}');
      if (k.contains(channelKey) || k == channelKey) {
        vertify = v;
      }
    });
    return vertify;
  }

  static getDepositNameByKey(String channelKey) {
    print('channelKey${channelKey}');
    var titleMap = {
      "ONLINEBANK": '网银',
      "ONLINEPAY": '在线支付',
      "ALIPAY": '支付宝',
      "TENPAY": '腾讯支付',
      "WECHATPAY": '微信支付',
      "QQPAY": 'QQ网银',
      "SCANPAY": '扫码付款',
      "UNIONPAY": '快捷支付',

      ///无法确定,
      "JDPAY": '京东支付',
      "FIXCODE": '扫码付款'
    };

    var vertify = '';
    titleMap.forEach((k, v) {
      print('v=>${k}');
      if (k.contains(channelKey) || k == channelKey) {
        vertify = v;
      }
    });
    return vertify;
  }


  static getThirdPartyPlatform() {
    return ["IBC", "IM", "AG", "SS", "BBIN"];
  }

  static Map<String, String> getCategorySort = {
    'SSC': '时时彩',
    '11X5': '11选五',
    '3DP3': '排列三',
    'PK10': 'PK10',
    'KLSF': '快乐10分',
    'LHC': '六合彩'
  };

  static const getDefaultGameSort = {
    'XYFT': 0,
    'BJPK10': 1,
    'FFC1': 2,
    'HK610': 3,
    'FFC2': 4,
    'FFC5': 5,
    'PK103': 6,
    'TENCENTSSC': 7,
    'CQSSC': 8,
  };

  static getTransferOutType(gameType) {
    print('gameType${gameType}');
    var map = {
      "IBC": 'TRANSFER_OUT_IBC',
      "IM": 'TRANSFER_IN_IM',
      "AG": 'TRANSFER_IN_AG',
      "SS": 'TRANSFER_IN_SS',
      "BBIN": 'TRANSFER_IN_BBIN',
    };
    return map[gameType];
  }

  static formatBallNum(String num, {char = ' '}) {
    String formatNum = '_,_,_,_,_';
    if (num != null) {
      if (num.isNotEmpty) {
        return num.split(',').join(char);
      }
    }
    return formatNum.split(',').join(char);
  }


  static getBetStatusName(String status, bool won) {
    if (status == null) {
      return '';
    }
    switch (status) {
      case "SEALED":
        if (won) {
          return '已中奖';
        } else {
          return '未中奖';
        }
        break;
      case "CANCELED":
        return '用户取消';
      case "ORDERED":
        return '已投注';
      default:
        return '已投注';
    }
  }


  static getChaseDetailsStatusName(String status) {
    if (status == null) {
      return '';
    }
    switch (status) {
      case "WAITING":
        return '进行中';
      case "BET_COMPLETED":
        return '已投注';
      case "BET_FAIL":
        return '投注失败';
      case "FINISH":
        return '已完成';
      case "NO_MONEY":
        return "余额不足";
      default:
        return '已完成';
    }
  }

  static getChaseStatusName(String status) {
    if (status == null) {
      return '';
    }
    switch (status) {
      case "PROCESSING":
        return '进行中';
      case "COMPLETED":
        return '已完成';
      case "SYSTEM_CANCEL":
        return '系统取消';
      case "USER_CANCEL":
        return '用户取消';
      default:
        return '已完成';
    }
  }

}
