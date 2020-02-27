import 'package:flutter/material.dart';
// import 'package:flutter_app/商城/index_page.dart';
import 'package:flutter_app/view/agent-login.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: MaterialApp(
//           title:'全民推荐',
//           debugShowCheckedModeBanner: false,
//           theme:ThemeData(
//               primaryColor:Colors.blue
//           ),
//           home:IndexPage()
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
          title: '全民推荐',
          debugShowCheckedModeBanner: false,
          home: AgentLogin()),
    );
  }
}
