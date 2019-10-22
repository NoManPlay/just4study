import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  // const FormPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('back'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text("FORM"),
      ),
      body: Text("FORM"),
    );
  }
}
