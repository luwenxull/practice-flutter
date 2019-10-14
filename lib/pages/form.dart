import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  @override
  _FormDemo createState() => _FormDemo();
}

class _FormDemo extends State<FormDemo> {
  final _formKey = GlobalKey<FormState>();
  final inputController = TextEditingController();

  _printInput(BuildContext context) {
    // if (_formKey.currentState.validate()) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Your input: ' + inputController.text),
        backgroundColor: Colors.red,
      ),
    );
    // }
  }

  @override
  void dispose() {
    super.dispose();
    inputController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 100, 10, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              controller: inputController,
              decoration: InputDecoration(labelText: '请输入'),
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text('获取输入'),
                onPressed: () {
                  _printInput(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
