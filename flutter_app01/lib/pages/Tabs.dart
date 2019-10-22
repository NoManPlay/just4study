import 'package:flutter/material.dart';
import 'tabs/Category.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  _TabsState(index) {
    this._currentIndex = index;
  }
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  List _pageName = [
    "HOME",
    "CATEGORY",
    "SETTING",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(this._pageName[_currentIndex]),
          backgroundColor: Colors.red,
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("HOME"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("CATE"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("SET"),
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: UserAccountsDrawerHeader(
                      accountName: Text("UserName"),
                      accountEmail: Text("mail.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://ww2.sinaimg.cn/bmiddle/806bc807ly1g7stvpoi5jj20u00u00v9.jpg"),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      otherAccountsPictures: <Widget>[
                        Image.network(
                            "https://ww4.sinaimg.cn/bmiddle/806bc807ly1g7stvnqkeuj20t60xctf2.jpg"),
                        Image.network(
                            "https://ww3.sinaimg.cn/bmiddle/806bc807ly1g7stvqdipcj20u00u0tdc.jpg"),
                      ],
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text('My Zoom'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('User'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text('Setting'),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text('My Zoom'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('User'),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text('Setting'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
