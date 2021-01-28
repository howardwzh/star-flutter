import 'package:flutter/material.dart';

class NavTabViews extends StatefulWidget {
  NavTabViews({Key key, this.pageController}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final PageController pageController;

  @override
  NavTabViewsState createState() => NavTabViewsState();
}

class NavTabViewsState extends State<NavTabViews> {
  int currentSelectIndex = 0;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return PageView(
      onPageChanged: (int index) {
        print("当前的页面是 $index");

        ///滑动PageView时，对应切换选择高亮的标签
        setState(() {
          currentSelectIndex = index;
        });
      },
      controller: widget.pageController,
      children: [
        Container(
          child: Text('tab1'),
        ),
        Container(
          child: Text('tab2'),
        ),
        Container(
          child: Text('tab3'),
        ),
      ],
    );
  }
}
