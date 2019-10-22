import 'package:flutter/material.dart';
import '../Tabs.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTER2"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("REGISTER2"),
            RaisedButton(
              child: Text("DONE"),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(
                        builder: (context) => new Tabs(index: 2)),
                    (route) => route == null);
              },
            ),
          ],
        ),
      ),
    );
  }
}
