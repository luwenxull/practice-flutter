import 'package:flutter/material.dart';
import './animationBase.dart';
import './animationWithAnimatedWidget.dart';
import './animationWithAnimatedBuilder.dart';
import './animationSimultaneous.dart';

class AnimationsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        AnimationsBaseDemo(),
        AnimationsWithAnimatedWidgetDemo(),
        AnimationsWithAnimatedBuilderDemo(),
        AnimationsSimultaneousDemo(),
      ],
    );
  }
}