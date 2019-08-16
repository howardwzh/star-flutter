import 'package:flutter/material.dart';

class ImageList extends StatefulWidget {
  @override
  _ImageListState createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image(image: AssetImage('assets/images/pro1.jpg'), fit: BoxFit.fill,),
        Image(image: AssetImage('assets/images/pro2.jpg'), fit: BoxFit.fill,),
        Image(image: AssetImage('assets/images/pro3.jpg'), fit: BoxFit.fill,),
        Image(image: AssetImage('assets/images/pro4.jpg'), fit: BoxFit.fill,),
        Image(image: AssetImage('assets/images/pro5.jpg'), fit: BoxFit.fill,),
      ],
    );
  }
}
