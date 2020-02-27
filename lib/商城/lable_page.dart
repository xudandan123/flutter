import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
class LablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('分类'),
        centerTitle: false
      ),
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            titleSpacing: 0,
            title: Row(
              children: <Widget>[
                Expanded(
                  child: TabBar(
                      indicatorColor: Colors.blue,
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.black,
                      indicatorWeight: 3,
                      indicatorPadding: EdgeInsets.all(-3),
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: <Widget>[
                        Tab(
                          text: "待接受",
                        ),
                        Tab(
                          text: "待入职",
                        ),
                        Tab(
                          text: "待转正",
                        ),
                        Tab(
                          text: "已结束",
                        )
                      ]),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              NameListView(),
              Center(
                  child: Text(
                "待更新...",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              )),
              Center(
                  child: Text(
                "待更新...",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              )),
              Center(
                  child: Text(
                "待更新...",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ))
            ],
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: null,
          //   child: Text("接口"),
          // ),
        ),
      ),
    );
  }
}

class NameListView extends StatefulWidget {
  @override
  _NameListViewState createState() => _NameListViewState();
}

class _NameListViewState extends State<NameListView> {
  String url = 'http://www.devio.org/img/avatar.png';
  int _currentIndex;
  List<Widget> viewList = [];
  List res;
  getData([bol = true]) async {
    try {
      if (bol) {
        Response response;
        response = await Dio().get(
          "https://www.studyinghome.com/mock/5e4933e27f1250195fcbc7f9/xudandan123/getUserInfo",
        );
        res = response.data['data'];
      }
      for (int i = 0; i <= res.length; i++) {
        setState(() {
          viewList.add(ListTile(
            // 将图像或图标添加到列表的开头。这通常是一个图标。
            leading: CircleAvatar(
              backgroundImage: NetworkImage(url),
            ),
            title: Text(res[i]['species']),
            subtitle: Text(res[i]['describe']),
            trailing: Icon(Icons.keyboard_arrow_right), // 设置拖尾将在列表的末尾放置一个图像
            onTap: () {
              _currentIndex = i;
              viewList = [];
              getData(false);
            },
            selected: i == _currentIndex, // 当前
          ));
          if (i == _currentIndex) {
            viewList.add(Container(
              child: Text(
                "这是一段关于 ${res[i]['species']} 的描述",
                style: TextStyle(color: Colors.red),
              ),
              padding: EdgeInsets.all(10),
            ));
          }
        });
      }
    } catch (e) {
      return e;
    }
    // return viewList;
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          ListTile.divideTiles(context: context, tiles: viewList).toList(),
    );
  }
}