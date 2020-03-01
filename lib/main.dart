import 'package:flutter/material.dart';
import 'package:flutter_app/view/agent-login.dart';
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
        home: AgentLogin(),
      ),
    );
  }
}
