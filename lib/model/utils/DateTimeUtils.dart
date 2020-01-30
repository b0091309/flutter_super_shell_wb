class DateTimeUtils {


  static final double MILLIS_LIMIT = 1000.0;

  static final double SECONDS_LIMIT = 60 * MILLIS_LIMIT;

  static final double MINUTES_LIMIT = 60 * SECONDS_LIMIT;

  static final double HOURS_LIMIT = 24 * MINUTES_LIMIT;

  static final double DAYS_LIMIT = 30 * HOURS_LIMIT;
  ///日期格式转换
  static String getNewsTimeStr(DateTime date) {
    int subTime =
        DateTime.now().millisecondsSinceEpoch - date.millisecondsSinceEpoch;

    if (subTime < MILLIS_LIMIT) {
      return "刚刚";
    } else if (subTime < SECONDS_LIMIT) {
      return (subTime / MILLIS_LIMIT).round().toString() + " 秒前";
    } else if (subTime < MINUTES_LIMIT) {
      return (subTime / SECONDS_LIMIT).round().toString() + " 分钟前";
    } else if (subTime < HOURS_LIMIT) {
      return (subTime / MINUTES_LIMIT).round().toString() + " 小时前";
    } else if (subTime < DAYS_LIMIT) {
      return (subTime / HOURS_LIMIT).round().toString() + " 天前";
    } else {
      return getDateStr(date);
    }
  }
  static String getDateStr(DateTime date) {
    if (date == null || date.toString() == null) {
      return "";
    } else if (date.toString().length < 10) {
      return date.toString();
    }
    return date.toString().substring(0, 10);
  }

  static String parseToChineseTime(DateTime date){
   var string =  date.toString();
    return '${date.year}年${date.month}月${date.day}日 ${date.hour}时${date.minute}分';
  }

  static String getDateBeforeDaysStr(int days) {
    return DateTime.now()
        .subtract(Duration(days: days))
        .toString()
        .substring(0, 10);
  }

  static DateTime getDateBeforeDays(int days) {
    var dateBefore = DateTime.now()
        .subtract(Duration(days: days));
    var hour = dateBefore.hour;
    var min = dateBefore.minute;
    ///调整到 00：00
    return dateBefore.subtract(Duration(hours: hour,minutes: min));
  }
  static String getTodayStr() {
    return DateTime.now().toString().substring(0, 10);
  }

  static DateTime getToday() {
    return DateTime.now();
  }

}
