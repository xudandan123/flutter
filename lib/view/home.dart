import 'package:flutter/material.dart';
import 'package:flutter_app/view/agent_login.dart';
import 'package:flutter_app/view/talent_login.dart';
import 'package:flutter_app/constants/constants.dart';
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
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TalentLogin(),
                  ),
                );
              },
            ),
            SizedBox(height: 30),
            new RaisedButton(
              child: Text('我是顾问'),
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
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
