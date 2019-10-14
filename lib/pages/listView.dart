import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  // List构造函数参考 form.dart
  // 以下为List.builder
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // 强制listview的高度为200
      child: ListView.builder(
        itemCount: 10, // 只产生10个
        itemExtent:
            40.0, // force the children to have the given extent in the scroll direction
        itemBuilder: (_, index) {
          return Chip(
            label: Text(index.toString()),
          );
        },
      ),
    );
  }
}
