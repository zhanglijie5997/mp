import 'dart:async';

class EventUtils {
  static debounce(Function fn, Duration delay) {
    Timer? timer;
    // 第一次触发
    bool status = false;
    
    return () {
      if (!status) {
        fn.call();
      }
      // ignore: unnecessary_null_comparison
      if (timer != null) {
        timer?.cancel();
      }
      timer = Timer(delay, () { 
        print("object");
        fn.call();
        status = false;
      });
    };
  }

  /// 睡眠
  static Future sleep(Duration delay) {
    return Future.delayed(delay);
  }
}