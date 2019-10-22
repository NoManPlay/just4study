import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTER1"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text("REGISTER1"),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              child: Text("NEXT STEP"),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/register2');
              },
            ),
          ],
        ),
      ),
    );
  }
}
