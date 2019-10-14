import 'package:flutter/material.dart';
import './menu.dart';
import './pages/form.dart';
import './pages/debug.dart';
import './pages/wrap.dart';
import './pages/listView.dart';

void main() => runApp(
    // debugPrintBeginFrameBanner = true;
    MyApp());

final menus = [
  {'name': 'Form', 'path': '/form', 'icon': Icons.home, 'widget': FormDemo()},
  {'name': 'Debug', 'path': '/debug', 'icon': Icons.home, 'widget': DebugDemo()},
  {'name': 'Wrap', 'path': '/wrap', 'icon': Icons.home, 'widget': WrapDemo()},
  {'name': 'ListView', 'path': '/list-view', 'icon': Icons.home, 'widget': ListViewDemo()},
];

Scaffold withScaffold(Widget body) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Pactice Flutter'),
    ),
    drawer: Drawer(
      child: Menus(
        menus: menus,
      ),
    ),
    body: body,
  );
}

createRoutes(BuildContext context) {
  final routes = {
    '/': (_) => withScaffold(menus[0]['widget']),
  };
  menus.forEach((item) {
    routes[item['path']] = (_) => withScaffold(item['widget']);
  });
  return routes;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: createRoutes(context),
    );
  }
}
