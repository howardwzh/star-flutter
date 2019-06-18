/// Author: xiaojia.dxj
 /// Date: 2018/11/22
 /// Email: xiaojia.dxj@alibaba-inc.com
 /// LastUpdateTime: 2018/11/22
 /// LastUpdateBy: xj.deng
 /// Describle:Align描述

import 'package:flutter/widgets.dart';

class AlignAlignment extends StatelessWidget {
  final Alignment status;
  final String dec;

  const AlignAlignment( this.status,  this.dec) : super();

  // @override
  // Widget build(BuildContext context) {
  //   return  Container(
  //     color: Color(0xffd81b60),
  //     width: 90.0,
  //     height: 50.0,
  //     child:  Align(
  //       alignment: status,
  //       child:  Text(
  //         dec,
  //         style: TextStyle(fontSize: 12.0, color: Color.fromRGBO(255, 255, 0, .9)),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(0, 255, 100, .8),
      width: 80,
      height: 40,
      child: Align(
        alignment: status,
        child: Text(
          dec,
          style: TextStyle(fontSize: 10, color: Color.fromRGBO(0, 0, 100, 1))
        ),
      ),
    );
  }
}

class AlignFactor extends StatelessWidget {
  final Alignment status;
  final double wFactor;
  final double hFactor;
  final String dec;

  const AlignFactor( this.status,  this.wFactor,
       this.hFactor,  this.dec)
      : super();

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:  EdgeInsets.only(top: 10.0, bottom: 10.0),
      color: Color(0xffd81b60),
      child:  Align(
        alignment: status,
        widthFactor: wFactor,
        heightFactor: hFactor,
        child: Container(
          color: Color(0xfff06292),
          width: 100.0,
          height: 50.0,
          child: Text(
            dec,
            style: TextStyle(color: Color(0xffffffff)),
          ),
        ),
      ),
    );
  }
}
