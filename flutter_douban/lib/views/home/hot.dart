import 'package:flutter/material.dart';

class Hot extends StatelessWidget {
  const Hot({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            child: Row(
              children: <Widget>[
                Container(
                  width: 60,
                  child: Text('热卖', style: TextStyle(fontSize: 20.0))
                ),
                Expanded(
                  child: Text('专属你的购物指南', textAlign: TextAlign.right,)
                )
              ],
            )  
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(child: Image(image: AssetImage('assets/images/banner-cera.jpg'), fit: BoxFit.fill,),),
                Container(child: Image(image: AssetImage('assets/images/banner-cera.jpg'), fit: BoxFit.fill,),),
                Container(child: Image(image: AssetImage('assets/images/banner-cera.jpg'), fit: BoxFit.fill,),),
              ],
            )
          )
        ],
      )
    );
  }
}
