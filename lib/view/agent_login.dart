import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constants.dart';
import 'package:flutter_app/components/common/tab_button.dart';
import 'package:flutter_app/components/pages/agent/agent_register.dart';

class AgentLogin extends StatefulWidget {
  AgentLogin({Key key}) : super(key: key);

  @override
  _AgentLoginState createState() => _AgentLoginState();
}

class _AgentLoginState extends State<AgentLogin> {
  Map agentUserInfo = {};
  int _activeBtn = 0; // 顶部切换按钮的索引
  int _activeTag = 0; // 有还是没有切换的索引
  List<Widget> _createChip() {
    return Constants.agentUserList.map((value) {
      return GestureDetector(
        child: Container(
          height: 32,
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
          decoration: BoxDecoration(
            border: Border.all(color: Constants.COLOR_808080, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(value["text"]),
              Icon(
                Icons.check_circle,
                color: Constants.COLOR_1FB3C4,
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AgentRegister(step: value["step"]),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height - 180;
    return Scaffold(
      backgroundColor: Constants.COLOR_1FB3C4,
      appBar: AppBar(
        title: Text(
          '  我是顾问-个人中心',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Constants.COLOR_1FB3C4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        elevation: 0,
        bottom: PreferredSize(
          child: TabButton.createBtn(Constants.userTab, _activeBtn, (k) {
            setState(() {
              _activeBtn = k;
            });
          }, 26),
          preferredSize: Size(32.0, 52.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(26, 0, 26, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                constraints:
                    BoxConstraints(minHeight: screenHeight, minWidth: double.infinity),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: Constants.COLOR_e5e5e5),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: _activeBtn == 0
                    ? Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Center(
                            child: Text(
                              "设置身份标签  展示您的优势",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Constants.COLOR_1FB3C4,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(height: 15),
                          Divider(
                            color: Constants.COLOR_999999,
                          ),
                          SizedBox(height: 50),
                          Column(
                            children: _createChip(),
                          ),
                          SizedBox(height: 80),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '点击"发布"即视同您同意接受并签署',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFF505050)),
                            ),
                          ),
                          SizedBox(height: 45),
                          TabButton.createBtn(Constants.hasOr, _activeTag, (k) {
                            setState(() {
                              // _activeTag = k;
                            });
                          }, 0),
                        ],
                      )
                    : Center(
                        child: Text('暂无数据'),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
