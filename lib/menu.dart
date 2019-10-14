import 'package:flutter/material.dart';

class Menus extends StatefulWidget {
  final List<Map<String, Object>> menus;
  Menus({Key key, @required this.menus}) : super(key: key);

  @override
  _MenusState createState() => _MenusState();
}

class _MenusState extends State<Menus> {
  @override
  Widget build(BuildContext context) {
    // this.
    return ListView(
      children: widget.menus.map((menu) {
        return ListTile(
          // leading: Icon(menu['icon']),
          title: Text(menu['name']),
          onTap: () {
            Navigator.pushNamed(context, menu['path']);
          },
        );
      }).toList(),
    );
  }
}
