import 'package:flutter/material.dart';

//ignore:must_be_immutable
class ProductInfoPage extends StatefulWidget {
  Map arguments;
  ProductInfoPage({Key key, this.arguments}) : super(key: key);

  _ProductInfoPageState createState() =>
      _ProductInfoPageState(arguments: this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  Map arguments;
  _ProductInfoPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PRODUCTINFO"),
      ),
      body: Text("pid=${arguments["pid"]}"),
    );
  }
}
