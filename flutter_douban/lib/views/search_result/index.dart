import 'package:flutter/material.dart';
// import '../../routers/application.dart';
import './search.dart';
import './sort.dart';

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Search(),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Container(
            color: Colors.white,
            child: Sort(),
          )
        )
      ),
      body: Column(
        children: <Widget>[
          Text('结果列表:xxxx'),
        ],
      ),
    );
  }
}
