import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(
                      text: "HOT1",
                    ),
                    Tab(
                      text: "NEW1",
                    ),
                    Tab(
                      text: "HOT2",
                    ),
                    Tab(
                      text: "NEW2",
                    ),
                    Tab(
                      text: "HOT3",
                    ),
                    Tab(
                      text: "NEW3",
                    ),
                    Tab(
                      text: "HOT4",
                    ),
                    Tab(
                      text: "NEW4",
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
                  child: Text("go Form"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/form');
                  },
                ),
              ],
            ),
            ListView(
              children: <Widget>[],
            ),
            ListView(
              children: <Widget>[],
            ),
            ListView(
              children: <Widget>[],
            ),
            ListView(
              children: <Widget>[],
            ),
            ListView(
              children: <Widget>[],
            ),
            ListView(
              children: <Widget>[],
            ),
            ListView(
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}
