import 'package:flutter/material.dart';
import '../../components/my_swiper.dart';
import '../../components/image_list.dart';

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
      appBar: AppBar(title: Text('${widget.title}')),
      body: ListView(
        children: <Widget>[
          MySwiper(dataList: [{'imgSrc': 'assets/images/banner-cera.jpg'},{'imgSrc': 'assets/images/banner-cera.jpg'},{'imgSrc': 'assets/images/banner-cera.jpg'},{'imgSrc': 'assets/images/banner-cera.jpg'}]),
          ImageList(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(
              child:FlatButton(
                padding: EdgeInsets.all(0.0),
                child: Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.phone),
                        Text('联系客服')
                      ],
                    ),
                  ),
                ),
                onPressed: (){
                  print('xxxx');
                }
              )
            ),
            Expanded(
              child:FlatButton(
                padding: EdgeInsets.all(0.0),
                child: Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.home),
                        Text('进店')
                      ],
                    ),
                  ),
                ),
                onPressed: (){
                  print('xxxx');
                }
              )
            ),
            Expanded(
              child:FlatButton(
                child: Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.shopping_cart),
                        Text('购物车')
                      ],
                    ),
                  ),
                ),
                onPressed: (){
                  print('xxxx');
                }
              )
            ),
            Container(
              height: 60.0,
              width:100.0,
              decoration: BoxDecoration(color: Color.fromRGBO(255, 175, 2, 1.0)),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text('加入购物车', style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0), fontSize: 16.0),),
                onPressed: (){
                  print('zzzz');
                },
              ),
            ),
             Container(
              height: 60.0,
              width: 90.0,
              decoration: BoxDecoration(color: Color.fromRGBO(255, 31, 1, 1.0)),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text('立即购买', style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0), fontSize: 16.0),),
                onPressed: (){
                  print('zzzz');
                },
              ),
            )
          ],
        )
      ),
    );
  }
}
