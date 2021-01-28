import 'package:flutter/material.dart';

class LinearAnimationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LinearAnimationDemo();
}

class _LinearAnimationDemo extends State<LinearAnimationDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        duration: Duration(seconds: 2),
        lowerBound: 100.0,
        upperBound: 300.0,
        vsync: this);

    _animationController.addListener(() {
      setState(() {});
    });

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
              width: _animationController.value,
              height: _animationController.value,
              color: Colors.red,
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
