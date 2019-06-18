import 'package:flutter/material.dart';
import 'my_swiper.dart';
import 'flash_deals.dart';
import 'hot.dart';
import 'sort.dart';

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
        MySwiper(),
        FlashDeals(),
        Hot(),
        Sort(title: '服装'),
        Sort(title: '家电'),
        Sort(title: '百货'),
        ]
      )
    );
  }
}
