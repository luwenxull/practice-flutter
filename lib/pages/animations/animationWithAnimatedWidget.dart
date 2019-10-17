import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedLogo extends AnimatedWidget {
  AnimatedLogo({Key key, @required Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
        child: FlutterLogo(),
      ),
    );
  }
}

class AnimationsWithAnimatedWidgetDemo extends StatefulWidget {
  @override
  _AnimationsWithAnimatedWidgetDemo createState() => _AnimationsWithAnimatedWidgetDemo();
}

class _AnimationsWithAnimatedWidgetDemo extends State<AnimationsWithAnimatedWidgetDemo>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(milliseconds: 700), vsync: this);
    animation = Tween(begin: 100.0, end: 300.0).animate(controller);
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
        AnimatedLogo(animation: animation,),
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
