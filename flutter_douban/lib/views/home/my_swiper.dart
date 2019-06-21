import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MySwiper extends StatefulWidget {
  @override
  _MySwiperState createState() => _MySwiperState();
}

class _MySwiperState extends State<MySwiper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Swiper(
        itemBuilder: (BuildContext context,int index){
          return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
        },
        itemCount: 4,
        pagination: new SwiperPagination()
      ),
      height: 200
    );
  }
}
