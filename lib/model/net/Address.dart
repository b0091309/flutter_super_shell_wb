

///地址数据
class Address {
  static const String POST = "post";
  static const String GET = "get";

  static String host = "https://vip.baby56.com/";
  static const String updateUrl = 'https://www.pgyer.com/vj2B';
  static const String customerServiceUrl =
      'https://ssg.livechatvalue.com/chat/chatClient/chatbox.jsp?companyID=923811&configID=41261&jid=5363625507&s=1';

  /***
   * App相关
   */
  static initDomainList(host) {
    return "${host}getDomainList";
  }

  static checkAppUpdate() {
    return "${host}api/app/check";
  }

  ///登入接口
  static sendLoginInfo() {
    return "${host}login";
  }

  ///注册
  static sendRegisterInfo() {
    return "${host}api/person/wmreg";
  }

  ///注册
  static sendRegisterSimpleInfo() {
    return "${host}api/person/register";
  }

  static getVersion() {
    return "${host}app/check";
  }

  static getUserInfomation() {
    return "${host}api/person/index";
  }

  static changeContactInfo() {
    return "${host}api/person/update";
  }

  /***
   * 第三方游戏相关
   */
  static initThirdPartyGame(platform) {
    return "${host}api/${platCode[platform]}/start";
  }

  /***
   * 彩票相关
   */

  ///彩票 最近10期结果 和
  static getLotteryDrawDetails(String type, int max) {
    return "${host}api/period/recent10?type=${type}&max=${max}&timestamp=${new DateTime.now().millisecondsSinceEpoch}";
  }

  ///彩票 遗漏数值
  static getLottoOmissionList() {
    return "${host}api/period/miss";
  }

  ///彩票 冷热数值
  static getLottoHottestList() {
    return "${host}api/period/mark";
  }

  ///彩票总接口
  static getLotteryDraw() {
    return "${host}api/period/future";
  }

  ///彩票-彩种列表
  static getLotteryGameList() {
    return "${host}api/game/mlist";
  }
  ///彩票-方法列表
  static getLotteryMethodList() {
    return "${host}api/method/mlist";
  }
  ///彩票奖期-停用
  static getLotterySingleDrawResult() {
    return "${host}api/period/current";
  }

  ///彩票完整奖期-新启用
  static getLotterySingleDrawCompletResult(String type) {
    return "${host}api/period?type=${type}&timestamp=${new DateTime.now().millisecondsSinceEpoch}";
  }

  static getServerTimestamp({String hs}) {
    print('ping=>${hs == null ? host : hs}servertime?r=${new DateTime.now().millisecondsSinceEpoch}');
    return "${hs == null ? host : hs}servertime?r=${new DateTime.now().millisecondsSinceEpoch}";
  }

  ///投注撤单
  static retractBetting() {
    return "${host}api/ticket/cancel";
  }

  ///追号撤单-整个单
  static retractSerialAllBetting(caseCode) {
    return "${host}api/bundle/cancel/${caseCode}";
  }

  ///追号撤单-追号底下单一注
  static retractSerialSingleBetting(caseCode) {
    return "${host}api/bundleTicket/cancel/${caseCode}";
  }

  ///投注
  static sendBettingInfo() {
    return "${host}api/ticket/batchAdd";
  }

  ///追号
  static sendSerialBettingInfo() {
    return "${host}api/bundle/batchAdd";
  }

  /***
   * 额度转换相关
   */

  static sendCapitalTransfer(bool inOrOut) {
    if (inOrOut) {
      return "${host}api/accountTransfer/transferIn";
    } else {
      return "${host}api/accountTransfer/transferOut";
    }
  }

  /*****
   * 记录相关
   */

  ///投注记录
  static getBetRecord() {
    return "${host}api/ticket/list";
  }

  ///投注记录-详情
  static getBetRecordDetails() {
    return "${host}api/ticket/get";
  }

  ///追号记录
  static getChaseRecord() {
    return "${host}api/bundle/list";
  }

  ///追号记录-详情
  static getChaseRecordDetails() {
    return "${host}api/bundleTicket/list/";
  }

  ///资金帐变-网页版接口
  static getCapitalDifferRecord() {
    return "${host}api/assetchange/list";
  }

  ///资金帐变-盈亏查询
  static getCapitalDifferRecordForPersonal() {
    return "${host}api/profitReport/info";
  }

  ///资金帐变-盈亏查询
  static getCapitalDifferRecordForTeam() {
    return "${host}api/profitReport/teamprofitReport";
  }

  ///个人盈亏记录
  static getPersonalRecord() {
    return "${host}api/profitReport/personalReport";
  }

  ///存款申请
  static getDepositApplyRecord() {
    return "${host}api/recharge/slist";
  }

  ///存款记录
  static getDepositRecord() {
    return "${host}api/assetchange/list";
  }

  ///提现申请
  static getWithdrawApplyRecord() {
    return "${host}api/debit/slist";
  }

  ///提现记录
  static getWithdrawRecord() {
    return "${host}api/assetchange/list";
  }

  ///钱包互转记录(额度转换
  static getTransactionRecord() {
    return "${host}api/assetchange/list";
  }

  ///积分帐变
  static getBonusDiffRecord() {
    return "${host}api/integralLog/slist";
  }

  /***
   * 密码相关
   */

  ///资金密码
  static setPwdForCapital() {
    return "${host}api/payPasswd/updatepwd/";
  }

  ///登录密码
  static setPwdForLogin() {
    return "${host}api/person/updatepwd/";
  }

  static containCapitalPwd() {
    return "${host}api/payPasswd/check";
  }

  /****
   *  银行卡相关
   */

  static getBankList() {
    return "${host}api/bank/list/";
  }

  ///User 银行卡列表
  static getUserBankCardList() {
    return "${host}api/personCard/slist/";
  }

  ///绑定银行卡
  static bindUserBankCard() {
    return "${host}api/personCard/save/";
  }

  ///验证银行卡
  static vertifyLastBankCard(bankid) {
    return "${host}api/personCard/check/${bankid}";
  }

  ///锁定银行卡
  static lockBankCard() {
    return "${host}api/lockCard/lock";
  }

  /***
   * 个人资料相关
   */

  ///资金密码
  static getUserBalance() {
    return "${host}api/person/balance";
  }

  ///我的消息列表
  static getMessageList() {
    return "${host}api/message/me";
  }

  ///我的消息详情
  static getMessageDetails(int MessageId) {
    return "${host}api/message/show/${MessageId}";
  }

  ///公告列表
  static getAnnouncementList() {
    return "${host}api/post/list";
  }

  ///公告详情
  static getAnnouncementDetails(int AnnouncementID) {
    return "${host}api/post/show/${AnnouncementID}";
  }

  /***
   * 充值相关
   */

  ///在线付款
  static getPayinfoByType(PayTypeID) {
    return "${host}api/payment/bankList/${PayTypeID}";
  }

  ///充值列表
  static getDepositChannel() {
    return "${host}api/depositChannel/list";
  }

  static goToChannelDetails() {
    return "${host}api/recharge/save";
  }

  static initWithdrawInfo() {
    return "${host}api/debit/info";
  }

  ///提现申请
  static applyWithdraw() {
    return "${host}api/debit/save/";
  }

  ///单一平台额度查询
  static getSinglePlatfomAmount(String platform) {
    return "${host}api/${platCode[platform]}/index";
  }

  static var platCode = {
    'IM': 'im2',
    'AG': 'agGame',
    'KYQP' : 'kyqp',
    'BBIN': 'bbin',
    'IBC': 'ibc',
    'SS': 'ss',
  };

  static transferIntoPlatform(String platform) {
    return "${host}api/${platCode[platform]}/transferIn";
  }

  static transferOutFromPlatform(String platform) {
    return "${host}api/${platCode[platform]}/transferOut";
  }

  /***
   * 代理相关
   */

  ///增加代理用户
  static addAgentUser() {
    return "${host}api/person/addLower";
  }

  ///生成代理张贴 URL
  static generatePromoteUrl() {
    return "${host}api/invitation/save";
  }

  ///推广网址
  static getPromoteUrlList() {
    return "${host}api/invitation/list";
  }

  ///删除推广网址
  static deletePromoteUrlList() {
    return "${host}api/invitation/delete";
  }

  ///代理或会员列表
  static getAgentListById() {
    return "${host}api/person/team";
  }

  ///代理返点列表
  static getAgentBrokerageList() {
    return "${host}api/personQuoto/index/";
  }

  ///代理下级转帐
  static transferCapitalToAgent() {
    return "${host}api/assetchange/transfer";
  }

  ///取得代理奖金组
  static getAgentBonusGroupList() {
    return "${host}api/invitation/show";
  }

  ///设定代理 返点
  static setAgentBrokerageInfo(userID) {
    return "${host}api/personQuoto/save/${userID}";
  }

  static getBrokerageList() {
    return "${host}api/brokeragesetting/list";
  }
}
