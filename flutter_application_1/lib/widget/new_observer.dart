import 'package:flutter/material.dart';

//导航的观察者
//导航路由在跳转时的回调，比如 push，pop，remove，replace是，可以拿到当前路由和后面路由的信息
//继承NavigatorObserver
class NewObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route previousRoute) {
    // 当调用Navigator.push时回调
    super.didPush(route, previousRoute);
    //可通过route.settings获取路由相关内容
    print('跳转到下一个页面');
  }

  @override
  void didPop(Route route, Route previousRoute) {
    // 当调用Navigator.pop时回调
    super.didPop(route, previousRoute);
    print('跳回到上一个页面');
  }

  @override
  void didRemove(Route route, Route previousRoute) {
    // 当调用Navigator.Remove时回调
    print('调用Navigator.Remove');
    super.didRemove(route, previousRoute);
  }
}
