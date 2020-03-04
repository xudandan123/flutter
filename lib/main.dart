import 'package:flutter/material.dart';
import 'package:flutter_app/view/agent_login.dart';
import 'package:flutter_app/view/talent_login.dart';
import 'package:flutter_app/constants/constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '全民推荐',
        debugShowCheckedModeBanner: false,
        //配置如下两个国际化的参数
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [const Locale("zh", "CH")],
        // home: AgentLogin(),
        // home: AgentDetail(),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.COLOR_1FB3C4,
        title: Text('T-Map'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100),
            new RaisedButton(
              child: Text('我是人才'),
              onPressed: () {
                print('xdd');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TalentLogin(),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            new RaisedButton(
              child: Text('我是顾问'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgentLogin(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
