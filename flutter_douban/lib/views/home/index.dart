import 'package:flutter/material.dart';
import 'my_swiper.dart';
import 'flash_deals.dart';
import 'hot.dart';
import 'sort.dart';
import '../../routers/application.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              MySwiper(),
              Positioned(
                right: 0,
                left: 0,
                child: TextField(
                  cursorWidth: 0,
                  onTap: (){
                    Application.router.navigateTo(context, '/search-result');
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search, color: Colors.white),
                    ),
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.all(14.0),
                  ),
                )
              ),
            ],
          ),
          FlashDeals(),
          Hot(),
          Sort(title: '服装', subclass: [{'id': '1', 'name': '男装'}, {'id': '2', 'name': '女装'}, {'id': '2', 'name': '童装'}, {'id': '2', 'name': '内衣'}]),
          Sort(title: '家电', subclass: [{'id': '3', 'name': '电视'}, {'id': '4', 'name': '空调'}, {'id': '4', 'name': '洗衣机'}, {'id': '4', 'name': '冰箱'}, {'id': '4', 'name': '厨卫大电'}]),
          Sort(title: '百货', subclass: [{'id': '5', 'name': '新鲜水果'},{'id': '6', 'name': '蔬菜蛋品'},{'id': '6', 'name': '精选肉类'},{'id': '6', 'name': '海鲜水产'},{'id': '6', 'name': '冷饮冻食'},{'id': '6', 'name': '蔬菜蛋品'},{'id': '6', 'name': '中外名酒'},{'id': '6', 'name': '进口食品'}]),
        ]
      )
    );
  }
}
