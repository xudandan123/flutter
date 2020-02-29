import 'package:flutter/material.dart';
import 'package:flutter_app/view/agent-login.dart';
// import 'package:flutter_app/form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '全民推荐',
        debugShowCheckedModeBanner: false,
        home: AgentLogin(),
      ),
    );
  }
}
