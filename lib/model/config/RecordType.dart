class RecordType {
  static const TrendSSC_ALLINFO = '整合';
  static const TrendSSC_WU = '五星';
  static const TrendSSC_SI = '四星';
  static const TrendSSC_Q_SAN = '前三';
  static const TrendSSC_Z_SAN = '中三';
  static const TrendSSC_H_SAN = '后三';

  static const TrendSSC_Q_ER = '前二';
  static const TrendSSC_H_ER = '后二';


  static const TrendPK10_ALLINFO = '整合';
  static const TrendPK10_10 = '排名';
  static const TrendPK10_Q_SAN = '前三名';
  static const TrendPK10_Q_WU = '前五名';
  static const TrendPK10_H_WU = '后五名';

  static Map<String, List<RecordTypeModel>> TrendSSCListItems() {
    return {
      'SSC': [
        new RecordTypeModel(0, "整合", TrendSSC_ALLINFO),
        new RecordTypeModel(1, "五星", TrendSSC_WU),
        new RecordTypeModel(2, "四星", TrendSSC_SI),
        new RecordTypeModel(3, "前三", TrendSSC_Q_SAN),
        new RecordTypeModel(4, "中三", TrendSSC_Z_SAN),
        new RecordTypeModel(5, "后三", TrendSSC_H_SAN),
        new RecordTypeModel(6, "前二", TrendSSC_Q_ER),
        new RecordTypeModel(7, "后二", TrendSSC_H_ER),
      ],
      'PK10': [
        new RecordTypeModel(0, "整合", TrendPK10_ALLINFO),
        new RecordTypeModel(1, "排名",TrendPK10_10),
        new RecordTypeModel(2, "前五名", TrendPK10_Q_WU),
        new RecordTypeModel(3, "后五名", TrendPK10_H_WU),
        new RecordTypeModel(4, "前三名", TrendPK10_Q_SAN),
      ],
    };
  }

  static List<RecordTypeModel> LhcAmountItems() {
    return [
      new RecordTypeModel(0, "1元", "1"),
      new RecordTypeModel(1, "10元", "10"),
      new RecordTypeModel(2, "50元", "50"),
      new RecordTypeModel(3, "100元", "100"),
      new RecordTypeModel(-1, "清除", "-1"),
    ];
  }

  static List<RecordTypeModel> TimeItems() {
    return [
      new RecordTypeModel(0, "今天", "0"),
      new RecordTypeModel(1, "3天", "3"),
      new RecordTypeModel(2, "7天", "7"),
      new RecordTypeModel(3, "30天", "30"),
      new RecordTypeModel(4, "筛选", "-1"),
    ];
  }

  static const String RECORD_TYPE_BET = "BET";
  static const String RECORD_TYPE_CHASE = "CHASE";

  static List<RecordTypeModel> TypeItems() {
    return [
      new RecordTypeModel(0, "投注", RECORD_TYPE_BET),
      new RecordTypeModel(1, "追号", RECORD_TYPE_CHASE)
    ];
  }

  static const String RECORD_CAPITAL = "capital_differ";
  static const String RECORD_PERSONAL = "personal_record";
  static const String RECORD_APPLY_DEPOSIT = "deposit_apply_record";
  static const String RECORD_DEPOSIT = "deposit_record";
  static const String RECORD_APPLY_WITHDRAW = "withdraw_apply_record";
  static const String RECORD_WITHDRAW = "withdraw_record";
  static const String RECORD_TRANSACTION = "account_trasaction";
  static const String RECORD_BONUS = "bonus_differ";

  static List<RecordTypeModel> RecordTypeItems() {
    return [
      new RecordTypeModel(0, "资金帐变", RECORD_CAPITAL),
      new RecordTypeModel(1, "充值申请", RECORD_APPLY_DEPOSIT),
      new RecordTypeModel(2, "充值记录", RECORD_DEPOSIT),
      new RecordTypeModel(3, "提现申请", RECORD_APPLY_WITHDRAW),
      new RecordTypeModel(4, "提现记录", RECORD_WITHDRAW),
      new RecordTypeModel(5, "积分帐变", RECORD_BONUS),
      new RecordTypeModel(6, "个人盈亏", RECORD_PERSONAL),
//      new RecordTypeModel(7, "我的转帐", RECORD_TRANSACTION),
    ];
  }

  static const redIndex = [
    1,
    2,
    7,
    8,
    12,
    13,
    18,
    19,
    23,
    24,
    29,
    30,
    34,
    35,
    40,
    45,
    46
  ];
  static const greenIndex = [
    5,
    6,
    11,
    16,
    17,
    21,
    22,
    27,
    28,
    32,
    33,
    38,
    39,
    43,
    44,
    49
  ];
  static const blueIndex = [
    3,
    4,
    9,
    10,
    14,
    15,
    20,
    25,
    26,
    31,
    36,
    37,
    41,
    42,
    47,
    48
  ];
  static Map<String, List<int>> lhcZodicBallTitle = {
    '鼠': [12, 24, 36, 48],
    '牛': [10, 22, 34, 46],
    '虎': [08, 20, 32, 44],
    '兔': [06, 18, 30, 42],
    '龙': [04, 16, 28, 40],
    '蛇': [02, 14, 26, 38],
    '马': [11, 23, 35, 47],
    '羊': [09, 21, 33, 45],
    '猴': [07, 19, 31, 43],
    '鸡': [05, 17, 29, 41],
    '狗': [03, 15, 27, 39],
    '猪': [01, 13, 25, 37, 49],
  };

  static Map<String, List<int>> lhcWuXingBallTitle = {
    '金': [18, 19, 26, 27, 34, 35, 48, 49, 04, 05],
    '木': [16, 17, 30, 31, 38, 39, 46, 47, 01, 08, 09],
    '水': [14, 15, 22, 23, 36, 37, 44, 45, 06, 07],
    '火': [10, 11, 24, 25, 32, 33, 40, 41, 02, 03],
    '土': [12, 13, 20, 21, 28, 29, 42, 43]
  };

  static List<RecordTypeModel> LhcInstantBetAreaZodicItems() {
    return [
      new RecordTypeModel(0, "鼠", "12,24,36,48"),
      new RecordTypeModel(1, "牛", "10,22,34,46"),
      new RecordTypeModel(2, "虎", "8,20,32,44"),
      new RecordTypeModel(3, "兔", "6,18,30,42"),
      new RecordTypeModel(4, "龙", "4,16,28,40"),
      new RecordTypeModel(5, "蛇", "2,14,26,38"),
      new RecordTypeModel(6, "马", "11,23,35,47"),
      new RecordTypeModel(7, "羊", "9,21,33,45"),
      new RecordTypeModel(8, "猴", "7,19,31,43"),
      new RecordTypeModel(9, "鸡", "5,17,29,41"),
      new RecordTypeModel(10, "狗", "3,15,27,39"),
      new RecordTypeModel(11, "猪", "1,13,25,37,49"),
    ];
  }

  static List<RecordTypeModel> LhcInstantBetAreaDaXiaoItems() {
    return [
      new RecordTypeModel(
          25, "红波", "1,2,7,8,12,13,18,19,23,24,29,30,34,35,40,45,46"),
      new RecordTypeModel(
          26, "蓝波", "3,4,9,10,14,15,20,25,26,31,36,37,41,42,47,48"),
      new RecordTypeModel(
          27, "绿波", "5,6,11,16,17,21,22,27,28,32,33,38,39,43,44,49"),
      new RecordTypeModel(21, "大",
          "26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49"),
      new RecordTypeModel(22, "小",
          "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25"),
      new RecordTypeModel(23, "单",
          "1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49"),
      new RecordTypeModel(24, "双",
          "2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48"),
    ];
  }

  static List<RecordTypeModel> LhcInstantBetAreaTailItems() {
    return [
      new RecordTypeModel(30, "尾0", "10,20,30,40"),
      new RecordTypeModel(31, "尾1", "1,11,21,31,41"),
      new RecordTypeModel(32, "尾2", "2,12,22,32,42"),
      new RecordTypeModel(33, "尾3", "3,13,23,33,43"),
      new RecordTypeModel(34, "尾4", "4,14,24,34,44"),
      new RecordTypeModel(35, "尾5", "5,15,25,35,45"),
      new RecordTypeModel(36, "尾6", "6,16,26,36,46"),
      new RecordTypeModel(37, "尾7", "7,17,27,37,47"),
      new RecordTypeModel(38, "尾8", "8,18,28,38,48"),
      new RecordTypeModel(39, "尾9", "9,16,29,39,49"),
      new RecordTypeModel(40, "头0", "1,2,3,4,5,6,7,8,9"),
      new RecordTypeModel(41, "头1", "10,11,12,13,14,15,16,17,18,19"),
      new RecordTypeModel(42, "头2", "20,21,22,23,24,25,26,27,28,29"),
      new RecordTypeModel(43, "头3", "30,31,32,33,34,35,36,37,38,39"),
      new RecordTypeModel(44, "头4", "40,41,42,43,44,45,46,47,48,49"),
    ];
  }
}

class RecordTypeModel {
  final int index;
  final String name;
  final String value;
  final String route;

  RecordTypeModel(this.index, this.name, this.value, {this.route});
}
