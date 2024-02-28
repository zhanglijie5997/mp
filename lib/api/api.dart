class ApiName {
  /// * 名称: 首页列表 请求方式: post
  static String get HomeList => "/home/list";

  /// * 名称: 公告 请求方式: get
  static String get ApiAnnouncementList => "/api/announcement/list";

  /// * 名称: 首页 banner 请求方式: get
  static String get ApiRotationChartSelectRotationChartList =>
      "/api/rotationChart/selectRotationChartList";

  /// * 名称: 金刚区 请求方式: get
  static String get ApiHomePositionSelectNftHomePositionList =>
      "/api/homePosition/selectNftHomePositionList";

  /// * 名称: 公告 Tab 请求方式: get
  static String get ApiAnnouncementTypeSelectAnnouncementTypeList =>
      "/api/announcement/type/selectAnnouncementTypeList";

  /// * 名称: 寄售市场二级分类 请求方式: get
  static String get NftMarketGetPlateList => "/nft/market/getPlateList";

  /// * 名称: 寄售市场二级藏品列表 请求方式: post
  static String get NftMarketGetConsignmentProductList =>
      "/nft/market/getConsignmentProductList";

  /// * 名称: 个人信息 请求方式: get
  static String get WxUser => "/wx/user";

  /// * 名称: 数字藏品列表 请求方式: get
  static String get NftUserProductGetProductList =>
      "/nft/user/product/getProductList";

  /// * 名称: 登陆 请求方式: post
  static String get ApiAppLoginPhone => "/api/app/login/phone";

  /// * 名称: 藏品详情 请求方式: get
  static String get NftMarketGetProductMintDetails =>
      "/nft/market/getProductMintDetails";

  /// * 名称: 寄售市场列表 请求方式: get
  static String get NftMarketGetConsignmentList =>
      "/nft/market/getConsignmentList";

  /// * 名称: 创建订单 请求方式: post
  static String get NftOrderCreateBuyOrder => "/nft/order/createBuyOrder";

  /// * 名称: 查询订单 请求方式: get
  static String get NftOrderGetOrderList => "/nft/order/getOrderList";

  /// * 名称: 获取订单详情 请求方式: get
  static String get NftOrderOrderDetai => "/nft/order/orderDetai";

  /// * 名称: 获取银行卡信息 请求方式: post
  static String get ApiLianPayQueryBankCardInfo =>
      "/api/lianPay/queryBankCardInfo";

  /// * 名称: 获取支付 请求方式: post
  static String get ApiLianPayQueryAccInfo => "/api/lianPay/queryAccInfo";
}
