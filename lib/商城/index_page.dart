import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'category_page.dart';
import 'lable_page.dart';
import 'member_page.dart';


class IndexPage extends StatefulWidget {
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
        icon:Icon(CupertinoIcons.book),
        title:Text('首页')
    ),
    BottomNavigationBarItem(
        icon:Icon(CupertinoIcons.search),
        title:Text('分类')
    ),
   BottomNavigationBarItem(
       icon:Icon(CupertinoIcons.tag),
       title:Text('组件')
   ),
    BottomNavigationBarItem(
        icon:Icon(CupertinoIcons.profile_circled),
        title:Text('会员中心')
    ),
  ];
  final List tabBodies = [ // 底部tab切换页面
    HomePage(),
    LablePage(),
    CategoryPage(),
    MemberPage()
  ];
  int currentIndex= 0;
  var currentPage ;
  @override
  void initState() { // 初始化商品首页页面
    currentPage=tabBodies[currentIndex];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items:bottomTabs,
        onTap: (index){
          setState(() {
            currentIndex=index;
            currentPage =tabBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}
