import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(),
        Text("SETTING"),
        RaisedButton(
          child: Text("ToLogin"),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        RaisedButton(
          child: Text("ToRegisterFirst"),
          onPressed: () {
            Navigator.pushNamed(context, '/register1');
          },
        ),
      ],
    );
  }
}
