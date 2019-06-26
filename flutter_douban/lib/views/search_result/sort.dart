import 'package:flutter/material.dart';

class Sort extends StatefulWidget {
  @override
  _SortState createState() => _SortState();
}

class _SortState extends State<Sort> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: <Widget>[
          Expanded(child: Text('综合', textAlign: TextAlign.center),),
          Expanded(child: Text('销量', textAlign: TextAlign.center),),
          Expanded(child: Text('服务', textAlign: TextAlign.center),),
          Expanded(child: Text('筛选', textAlign: TextAlign.center),),
        ],
      ),
      height: 48.0,
    );
  }
}
