import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  final String title;
  final String id;

  Product({Key key, this.title, this.id}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(title: Text('详情-${widget.title}')),
      body: ListView(
        children: <Widget>[
          Text('xxxxx'),
          Text('xxxxx'),
          Text('xxxxx'),
          Text('xxxxx'),
          Text('xxxxx'),
          Text('xxxxx'),
        ],
      )
    );
  }
}
