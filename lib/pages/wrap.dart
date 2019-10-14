import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WrapDemo extends StatefulWidget {
  @override
  _WrapDemo createState() {
    return _WrapDemo();
  }
}

class _WrapDemo extends State<WrapDemo> {
  double spacing = 8.0;
  double runSpacing = 4.0;
  final spacingInputController = TextEditingController();
  final runSpacingInputController = TextEditingController();

  update() {
    setState(() {
      // TODO catch error
      spacing = double.parse(spacingInputController.text);
      runSpacing = double.parse(runSpacingInputController.text);
    });
  }

  @override
  void initState() {
    super.initState();
    spacingInputController.text = spacing.toString();
    runSpacingInputController.text = runSpacing.toString();
  }

  @override
  void dispose() {
    super.dispose();
    spacingInputController.dispose();
    runSpacingInputController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          // height: 300,
          child: Wrap(
            spacing: spacing, // gap between adjacent chips
            runSpacing: runSpacing, // gap between lines
            alignment: WrapAlignment.spaceAround, //主轴排列
            crossAxisAlignment: WrapCrossAlignment.center, // 行内元素在副轴如何对齐（元素需要高度不同，高度相同时无效）
            // runAlignment: WrapAlignment.center, // run在副轴如何对齐（需要parent有height constraint）
            children: <Widget>[
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue.shade900, child: Text('AH')),
                label: Text('Hamilton'),
              ),
              Card(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(child: Text('A card')),
                ),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue.shade900, child: Text('HM')),
                label: Text('Mulligan'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue.shade900, child: Text('JL')),
                label: Text('Laurens'),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                controller: spacingInputController,
                decoration: InputDecoration(
                  labelText: 'spacing',
                  // border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: runSpacingInputController,
                decoration: InputDecoration(
                  labelText: 'runSpacing',
                  // border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
        RaisedButton(
          child: Text('更新'),
          onPressed: update,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }
}
