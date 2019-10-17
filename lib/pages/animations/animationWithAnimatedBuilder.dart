import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedLogo extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;
  AnimatedLogo({@required this.child, @required this.animation});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (_, child) => Container(
          child: child,
          width: animation.value,
          height: animation.value,
        ),
        child: child,
      ),
    );
  }
}

class AnimationsWithAnimatedBuilderDemo extends StatefulWidget {
  @override
  _AnimationsWithAnimatedBuilderDemo createState() =>
      _AnimationsWithAnimatedBuilderDemo();
}

class _AnimationsWithAnimatedBuilderDemo
    extends State<AnimationsWithAnimatedBuilderDemo>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
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
        AnimatedLogo(
          child: FlutterLogo(),
          animation: animation,
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
