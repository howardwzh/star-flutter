import 'package:flutter/material.dart';

class Hot extends StatelessWidget {
  const Hot({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Container(
        child: Text('TODO: 热卖'),
        height: 200,
        alignment: Alignment.topLeft,
        color: Colors.blueAccent,
      )
    );
  }
}
