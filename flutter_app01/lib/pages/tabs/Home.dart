import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  tabs: <Widget>[
                    Tab(
                      text: "HOT",
                    ),
                    Tab(
                      text: "NEW",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                RaisedButton(
                  child: Text("go Search"),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/search',
                      arguments: {"id": 123},
                    );
                  },
                ),
                RaisedButton(
                  child: Text("go Product"),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/product',
                    );
                  },
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("second"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
