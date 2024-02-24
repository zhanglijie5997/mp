
import 'package:flutter/material.dart';
import 'package:mp/mp.app.dart';

abstract class RouteAwareState<T extends StatefulWidget> extends State<T>
    with RouteAware {
  @override
  void didChangeDependencies() {
    routeObserver.subscribe(
        this, ModalRoute.of(context) as PageRoute); //Subscribe it here
    // 监听建立
    super.didChangeDependencies();
  }

  @override
  void didPush() {
    print('didPush $widget');
  }

  @override
  void didPopNext() {
    print('didPopNext $widget');
  }

  @override
  void didPop() {
    print('didPop $widget');
  }

  @override
  void didPushNext() {
    print('didPushNext $widget');
  }

  @override
  void dispose() {
    print("dispose $widget");
    routeObserver.unsubscribe(this);
    super.dispose();
  }
}
