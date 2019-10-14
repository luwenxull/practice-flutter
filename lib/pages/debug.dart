import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DebugDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      children: <Widget>[
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            debugDumpApp();
          },
          child: Text('Dump App'),
        ),
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            debugDumpRenderTree();
          },
          child: Text('Dump render tree'),
        ),
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            debugDumpLayerTree();
          },
          child: Text('Dump layer tree'),
        ),
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            debugPaintSizeEnabled = !debugPaintSizeEnabled;
          },
          child: Text('Toggle debugPaintSizeEnabled'),
        ),
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            debugPaintBaselinesEnabled = !debugPaintBaselinesEnabled;
          },
          child: Text('Toggle debugPaintBaselinesEnabled'),
        ),
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            debugPaintPointersEnabled = !debugPaintPointersEnabled;
          },
          child: Text('Toggle debugPaintPointersEnabled'),
        ),
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            debugPaintLayerBordersEnabled = !debugPaintLayerBordersEnabled;
          },
          child: Text('Toggle debugPaintLayerBordersEnabled'),
        ),
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            debugRepaintRainbowEnabled = !debugRepaintRainbowEnabled;
          },
          child: Text('Toggle debugRepaintRainbowEnabled'),
        ),
      ],
    );
  }
}
