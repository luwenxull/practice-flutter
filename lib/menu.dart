import 'package:flutter/material.dart';

const menus = [
  {'name': '表单', 'path': '/form', 'icon': Icons.home},
  {'name': '调试', 'path': '/debug', 'icon': Icons.home},
];

class Menus extends StatefulWidget {
  Menus({Key key}) : super(key: key);

  @override
  _MenusState createState() => _MenusState();
}

class _MenusState extends State<Menus> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: menus.map((menu) {
        return ListTile(
          title: Text(menu['name']),
          onTap: () {
            Navigator.pushNamed(context, menu['path']);
          },
        );
      }).toList(),
    );
  }
}
