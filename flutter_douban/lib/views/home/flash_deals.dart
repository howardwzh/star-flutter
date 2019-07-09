import 'package:flutter/material.dart';
import '../../routers/application.dart';

class FlashDeals extends StatelessWidget {
  const FlashDeals({Key key}) : super(key: key);

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
                  child: Text('秒杀', style: TextStyle(fontSize: 20.0))
                ),
                Expanded(
                  child: Text('争分夺秒快人一半', textAlign: TextAlign.right,)
                )
              ],
            )  
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                GestureDetector(child: Image(image: AssetImage('assets/images/banner-cera.jpg'), fit: BoxFit.fill,), onTap: () {
                  Application.router.navigateTo(context, '/search-result');       
                }),
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
