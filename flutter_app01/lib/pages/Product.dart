import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Map> imgList = [
    {
      "url":
          "https://ww4.sinaimg.cn/bmiddle/806bc807ly1g7stvpvkvqj20u00u0q4y.jpg"
    },
    {
      "url":
          "https://ww2.sinaimg.cn/bmiddle/806bc807ly1g7stvpoi5jj20u00u00v9.jpg"
    },
    {
      "url":
          "https://ww1.sinaimg.cn/bmiddle/806bc807ly1g7stvp47qgj20u00u0dhy.jpg"
    },
  ];

  String _data;
  List _list = [];

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 2,
    );
    _tabController.addListener(() {});
    this._getData();
  }

  _getData() async {
    var apiUrl = "http://a.itying.com/api/productlist";
    var result = await http.get(apiUrl);
    if (result.statusCode == 200) {
      // print(result.body);
      setState(() {
        // print(json.decode(result.body)["result"][1]["title"]);
        this._list = json.decode(result.body)["result"];
      });
    } else {
      print(result.statusCode);
    }
  }

  _postData() async {
    var apiUrl = "http://a.itying.com/api/productlist";
    var result = await http.post(apiUrl);
    if (result.statusCode == 200) {
      // print(result.body);
      setState(() {
        // print(json.decode(result.body)["result"][1]["title"]);
      });
    } else {
      print(result.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PRODUCT"),
        bottom: TabBar(
          controller: this._tabController,
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
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(
            child: RaisedButton(
              child: Text("go ProductInfo"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/productinfo',
                  arguments: {"pid": 456},
                );
              },
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Container(
                  // width: double.infinity,
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return new Image.network(
                          imgList[index]["url"],
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: imgList.length,
                      pagination: new SwiperPagination(),
                      control: new SwiperControl(),
                      loop: true,
                      // autoplay: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
