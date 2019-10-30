import 'package:flutter/material.dart';
import './pages/form.dart';
import './pages/debug.dart';
import './pages/wrap.dart';
// import './pages/listView.dart';
import './pages/scrollView/index.dart';
import './pages/animations/index.dart';

class MenuItem {
  final String name;
  final String path;
  final Widget widget;

  MenuItem({
    @required this.name,
    @required this.path,
    // @required this.icon
    @required this.widget,
  });
}

class MenuCate {
  String name;
  bool expanded = false;
  List<MenuItem> children;
  MenuCate(this.name, this.children);
}

final List<MenuCate> menus = [
  MenuCate('示例', [
    MenuItem(name: 'Form', path: '/form', widget: FormDemo()),
    MenuItem(name: 'Wrap', path: '/wrap', widget: WrapDemo()),
    MenuItem(
        name: 'ScrollView', path: '/scroll-view', widget: ScrollViewDemo()),
    MenuItem(name: 'Animations', path: '/aimations', widget: AnimationsDemo()),
  ]),
  MenuCate('调试', [MenuItem(name: 'Debug', path: '/debug', widget: DebugDemo())])
];

class Menus extends StatefulWidget {
  // Menus({Key key, @required this.menus}) : super(key: key);
  @override
  _MenusState createState() => _MenusState();
}

class _MenusState extends State<Menus> {
  @override
  // Navigator.pushNamed(context, menu['path']);
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            menus[index].expanded = !isExpanded;
          });
        },
        children: menus.map((cate) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(cate.name),
              );
            },
            body: Column(
              children: cate.children.map((item) {
                return ListTile(
                  title: Text(item.name),
                );
              }).toList(),
            ),
            // body: Text('tes'),
            isExpanded: cate.expanded,
          );
        }).toList(),
      ),
    );
  }
}
