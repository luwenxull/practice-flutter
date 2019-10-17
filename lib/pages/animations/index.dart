import 'package:flutter/material.dart';
import './animation.dart';
import './animationWithAnimatedWidget.dart';
import './animationWithAnimatedBuilder.dart';

class AnimationsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        AnimationsBaseDemo(),
        AnimationsWithAnimatedWidgetDemo(),
        AnimationsWithAnimatedBuilderDemo(),
      ],
    );
  }
}