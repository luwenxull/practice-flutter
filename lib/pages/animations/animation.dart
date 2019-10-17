import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimationsBaseDemo extends StatefulWidget {
  @override
  _AnimationsBaseDemo createState() => _AnimationsBaseDemo();
}

class _AnimationsBaseDemo extends State<AnimationsBaseDemo>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween(begin: 100.0, end: 300.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: animation.value,
            height: animation.value,
            child: FlutterLogo(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              child: Text('开始动画'),
              onPressed: () {
                controller.forward();
              },
              color: Theme.of(context).primaryColor,
            ),
            RaisedButton(
              child: Text('反向动画'),
              onPressed: () {
                controller.reverse();
              },
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ],
    );
  }
}
