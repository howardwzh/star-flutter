import 'package:flutter/material.dart';
import '../../animation/linear_demo.dart';
import '../../animation/curved_demo.dart';
import '../../animation/switcher_demo.dart';
import '../../animation/switcher_pro_demo.dart';

class AnimationPage extends StatefulWidget {
  static final String sName = '/animation';
  AnimationPage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  AnimationPageState createState() => AnimationPageState();
}

class AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementanimationer method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the AnimationPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('动画'),
      ),
      body: GridView(
        padding: EdgeInsets.only(top: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, //横轴三个子widget
          childAspectRatio: 1.0, //宽高比为1时，子widget
          mainAxisSpacing: 20,
        ),
        children: <Widget>[
          LinearAnimationDemo(),
          CurvedAnimationDemo(),
          AnimatedSwitcherCounterRoute(),
          AnimatedSwitcherProCounterRoute()
        ],
      ),
    );
  }
}
