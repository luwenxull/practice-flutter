import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DemoWrap extends StatefulWidget {
  @override
  _DemoWrap createState() {
    return _DemoWrap();
  }
}

class _DemoWrap extends State<DemoWrap> {

  update() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wrap(
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: Text('AH')),
              label: Text('Hamilton'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: Text('ML')),
              label: Text('Lafayette'),
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
        Column(
          children: <Widget>[

          ],
        ),
        RaisedButton(child: Text('更新'),onPressed: update,)
      ],
    );
  }
}
