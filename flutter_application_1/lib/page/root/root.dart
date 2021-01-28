import 'package:flutter/material.dart';

class RootWidget extends InheritedWidget {
  RootWidget({@required this.data, Widget child}) : super(child: child);

  final dynamic data; //需要在子树中共享的数据，保存点击次数

  //定义一个便捷方法，方便子树中的widget获取共享数据
  static RootWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RootWidget>();
  }

  //该回调决定当data发生变化时，是否通知子树中依赖data的Widget
  @override
  bool updateShouldNotify(RootWidget old) {
    //如果返回true，则子树中依赖(build函数中有调用)本widget
    //的子widget的`state.didChangeDependencies`会被调用
    return old.data != data;
  }
}
