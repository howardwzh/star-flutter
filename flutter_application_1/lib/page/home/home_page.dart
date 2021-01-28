import 'package:flutter/material.dart';
import '../../widget/bottom_nav_bar.dart';
import '../../widget/nav_tab_views.dart';
import '../root/root.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  PageController pageController;
  int defaultIndex = 0;
  // This widget is the root of your application.

  @override
  void initState() {
    super.initState();

    ///创建控制器的实例
    pageController = new PageController(
      ///用来配置PageView中默认显示的页面 从0开始
      initialPage: defaultIndex,

      ///为true是保持加载的每个页面的状态
      keepPage: true,
    );

    ///PageView设置滑动监听
    pageController.addListener(() {
      //PageView滑动的距离
      double offset = pageController.offset;
      // print("pageView 滑动的距离 $offset");
      setState(() {
        defaultIndex = (offset / MediaQuery.of(context).size.width).round();
        // print(defaultIndex);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePagePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('首页'),
      ),
      body: NavTabViews(pageController: pageController),
      bottomNavigationBar: RootWidget(
          //使用RootWidget
          data: defaultIndex,
          child: BottomNavBar(pageController: pageController)),
    );
  }
}
