import 'package:flutter/material.dart';
import 'home/index.dart';
import 'activity/index.dart';
import 'account/index.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String appBarTitle = tabData[0]['text'];
  int _currentIndex = 0;
  static List tabData = [
    {'text': '首页', 'icon': Icon(Icons.home)},
    {'text': '活动', 'icon': Icon(Icons.tag_faces)},
    {'text': '我的', 'icon': Icon(Icons.person)},
  ];

  List<Widget> _list = List();
  List<BottomNavigationBarItem> _myTabs = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < tabData.length; i++) {
      _myTabs.add(BottomNavigationBarItem(icon: tabData[i]['icon'], title: Text(tabData[i]['text'])));
    }
    _list.add(Home());
    _list.add(Activity());
    _list.add(Account());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: IndexedStack(
        index: _currentIndex,
        children: _list,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _myTabs,
        currentIndex: _currentIndex,
        onTap: _itemTapped,
        type: BottomNavigationBarType.fixed
      )
    );
  }

  void _itemTapped(int index) {
    setState(() {
      _currentIndex = index;
      appBarTitle = tabData[index]['text'];
    });
  }
}
