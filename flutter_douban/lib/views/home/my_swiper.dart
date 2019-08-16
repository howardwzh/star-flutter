import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../routers/application.dart';
import '../../routers/routers.dart';

class MySwiper extends StatefulWidget {
  final List dataList;
  MySwiper({Key key, this.dataList}) : super(key: key);

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
          return Image(image: AssetImage(widget.dataList[index]['imgSrc']), fit: BoxFit.fill,);
        },
        itemCount: widget.dataList.length,
        pagination: new SwiperPagination(),
        onTap: (index) {
          Application.router.navigateTo(context, '${Routes.product}?title=${Uri.encodeComponent(widget.dataList[index]['title'])}&id=${widget.dataList[index]['id']}');
        }
      ),
      height: 200
    );
  }
}
