import 'package:flutter/material.dart';

class CurvedAnimationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CurvedAnimationDemo();
}

class _CurvedAnimationDemo extends State<CurvedAnimationDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animationWidthHeight;
  Animation _animationColor;
  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    _animationController.addListener(() {
      setState(() {});
    });

    _animationWidthHeight = Tween(begin: 100.0, end: 300.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn));
    _animationColor = ColorTween(begin: Colors.red, end: Colors.blue).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text(_animationController.isCompleted ? '复位动画' : '开始动画'),
          onPressed: () {
            _animationController.isCompleted
                ? _animationController.reset()
                : _animationController.forward();
          },
        ),
        Expanded(
          child: Center(
            child: Container(
              width: _animationWidthHeight.value,
              height: _animationWidthHeight.value,
              color: _animationColor.value,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
