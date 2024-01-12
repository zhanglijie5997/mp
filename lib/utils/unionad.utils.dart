import 'package:flutter/foundation.dart';
import 'package:flutter_unionad/flutter_unionad.dart';
import 'package:mp/config/config.dart';

class UnionadUtils {
  /// 初始化
  static init(){
    return FlutterUnionad.register(
        //穿山甲广告 Android appid 必填
        androidAppId: AppConfig.androidAppId,
        //穿山甲广告 ios appid 必填
        iosAppId: AppConfig.iosAppId,
        //使用TextureView控件播放视频,默认为SurfaceView,当有SurfaceView冲突的场景，可以使用TextureView 选填
        useTextureView: true,
        //appname 必填
        appName: AppConfig.appName,
        //是否允许sdk展示通知栏提示 选填
        allowShowNotify: true,
        //是否在锁屏场景支持展示广告落地页 选填
        allowShowPageWhenScreenLock: true,
        //是否显示debug日志
        debug: kDebugMode,
        //是否支持多进程，true支持 选填
        supportMultiProcess: true,
        //是否开启个性化推荐 选填 默认开启
        personalise: FlutterUnionadPersonalise.close,
        //主题模式 默认FlutterUnionAdTheme.DAY,修改后需重新调用初始化
        themeStatus: FlutterUnionAdTheme.DAY,
        //允许直接下载的网络状态集合 选填
        directDownloadNetworkType: [
          FlutterUnionadNetCode.NETWORK_STATE_2G,
          FlutterUnionadNetCode.NETWORK_STATE_3G,
          FlutterUnionadNetCode.NETWORK_STATE_4G,
          FlutterUnionadNetCode.NETWORK_STATE_WIFI
        ]
    );
  }
  /// 获取版本
  static getVersion() {
    return FlutterUnionad.getSDKVersion();
  }

  /// 获取权限
  static getPremission() {
    FlutterUnionad.requestPermissionIfNecessary(
      callBack: FlutterUnionadPermissionCallBack(
        notDetermined: () {
            print("权限未确定");
        },
        restricted: () {
            print("权限限制");
        },
        denied: () {
            print("权限拒绝");
        },
        authorized: () {
            print("权限同意");
        },
    ));
  }

  static showAd() {
    return FlutterUnionad.showRewardVideoAd();
  }

  static preloadAd() {
    FlutterUnionad.loadRewardVideoAd(
        //是否个性化 选填
        androidCodeId: "945418088",
        //Android 激励视频广告id  必填
        iosCodeId: "945418088",
        //ios 激励视频广告id  必填
        supportDeepLink: true,
        //是否支持 DeepLink 选填
        rewardName: "100金币",
        //奖励名称 选填
        rewardAmount: 100,
        //奖励数量 选填
        userID: "123",
        //  用户id 选填
        orientation: FlutterUnionadOrientation.VERTICAL,
        //控制下载APP前是否弹出二次确认弹窗
        downloadType: FlutterUnionadDownLoadType.DOWNLOAD_TYPE_POPUP,
        //视屏方向 选填
        mediaExtra: null, //扩展参数 选填
        //用于标注此次的广告请求用途为预加载（当做缓存）还是实时加载，
        adLoadType: FlutterUnionadLoadType.PRELOAD,
      );
  }


  static listener() {
     FlutterUnionadStream.initAdStream(
      //激励广告
        flutterUnionadRewardAdCallBack: FlutterUnionadRewardAdCallBack(
        onShow: (){
          print("激励广告显示");
        },
        onClick: (){
          print("激励广告点击");
        },
        onFail: (error){
          print("激励广告失败 $error");
        },
        onClose: (){
          print("激励广告关闭");
        },
        onSkip: (){
          print("激励广告跳过");
        },
        onVerify: (rewardVerify,rewardAmount,rewardName, v1, v2){
          // TODO: 看完了，获取奖励
          print("激励广告奖励  $rewardVerify   $rewardAmount  $rewardName");
        },
        onReady: () async{
          print("激励广告预加载准备就绪");
        }, 
        onCache: () async {
          print("激励广告物料缓存成功。建议在这里进行广告展示，可保证播放流畅和展示流畅，用户体验更好。");
          await FlutterUnionad.showRewardVideoAd();
        },
        onUnReady: (){
          print("激励广告预加载未准备就绪");
        }, 
        onRewardArrived: (rewardVerify, rewardType, rewardAmount, rewardName,
          errorCode, error, propose) {
            print(
            "阶段激励广告奖励  验证结果=$rewardVerify 奖励类型<FlutterUnionadRewardType>=$rewardType 奖励=$rewardAmount"
            "奖励名称$rewardName 错误码=$errorCode 错误$error 建议奖励$propose");
            }),
    );
  }

}