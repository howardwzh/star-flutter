import 'package:flutter/material.dart';

class Sort extends StatelessWidget {
  final String title;
  const Sort({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Container(
        child: Text('TODO: 分类展示-${this.title}'),
        height: 200,
        alignment: Alignment.topLeft,
        color: Colors.redAccent,
      )
    );
  }
}
