class ApiName {
  /// * 名称: 首页列表 请求方式: post
  static String get HomeList => "/home/list";

  /// * 名称: 公告 请求方式: get
  static String get ApiAnnouncementList => "/api/announcement/list";

  /// * 名称: 首页banner 请求方式: get
  static String get ApiRotationChartSelectRotationChartList =>
      "/api/rotationChart/selectRotationChartList";

  /// * 名称: 金刚区 请求方式: get
  static String get ApiHomePositionSelectNftHomePositionList =>
      "/api/homePosition/selectNftHomePositionList";

  /// * 名称: 公告Tab 请求方式: get
  static String get ApiAnnouncementTypeSelectAnnouncementTypeList =>
      "/api/announcement/type/selectAnnouncementTypeList";

  /// * 名称: 寄售市场二级分类 请求方式: get
  static String get NftMarketGetPlateList => "/nft/market/getPlateList";

  /// * 名称: 寄售市场二级藏品列表 请求方式: get
  static String get NftMarketGetConsignmentProductList =>
      "/nft/market/getConsignmentProductList";
}
