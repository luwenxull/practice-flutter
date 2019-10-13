import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  _printInput(BuildContext context) {
    // if (_formKey.currentState.validate()) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Your input: ' + emailController.text),
        backgroundColor: Colors.red,
      ),
    );
    // }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
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
              controller: emailController,
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
