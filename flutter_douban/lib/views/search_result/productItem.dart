import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Color.fromRGBO(255, 255, 255, 1),
      onPressed: () {
        print('000');
      },
      child: Row(
        children: <Widget>[
          Container(
            width: 100.0,
            margin: EdgeInsets.all(16.0),
            child: Image(
              image: AssetImage("assets/images/prod-iphone.jpg")
            )
          ),
          Expanded(child: Column(
            children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Text('【京东自营】索爱（soaiy） 5.0 真无线蓝牙耳机')
            ),
            SizedBox(
              width: double.infinity,
              child: Text('¥ 169.00')
            ),
            SizedBox(
              width: double.infinity,
              child: Text('10万+')
            ),
            SizedBox(
              width: double.infinity,
              child: Text('索爱京东自营旗舰店')
            )
          ],),)
      ])
    );
  }
}
