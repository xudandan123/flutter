import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:flutter_app/data.dart';
import 'package:flutter_app/components/common/tab-button.dart';
import 'package:flutter_app/components/common/creat-choice.dart';
import 'package:flutter_app/components/common/input-add.dart';

class AgentLogin extends StatefulWidget {
  AgentLogin({Key key}) : super(key: key);
  @override
  _AgentLoginState createState() => _AgentLoginState();
}

class _AgentLoginState extends State<AgentLogin> {
  int _activeBtn = 0;
  int _activeTag = 0;
  int _activeTag2 = 0;
  int _step = 1;
  List<Widget> btnGroup = [];
  List _nameGroup = [];
  @override
  void initState() {
    super.initState();
    this._changeList(serviceTag['Step${_step}']["list"]);
  }

  _changeList(dataList) {
    creatChoice(dataList, serviceTag['Step${_step}']["type"], (btnGroups) {
      setState(() {
        btnGroup = btnGroups;
      });
    }, (id) {
      print("当前选中数据的id为${id}");
      setState(() {
        btnGroup = [];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.COLOR_1FB3C4,
      appBar: AppBar(
        title: Text('我是顾问-个人中心'),
        backgroundColor: Constants.COLOR_1FB3C4,
        centerTitle: false,
        elevation: 0,
        bottom: PreferredSize(
          child: TabButton.createBtn(Constants.userTab, _activeBtn, (k) {
            if (k == 0) {
              this._changeList(serviceTag['Step${_step}']["list"]);
            }
            setState(() {
              _activeBtn = k;
            });
          }, 26),
          preferredSize: Size(32.0, 32.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(26, 0, 26, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // SizedBox(height: 10),
              Container(
                constraints:
                    BoxConstraints(minHeight: 560, minWidth: double.infinity),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: Constants.COLOR_e5e5e5),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: _activeBtn == 0
                    ? Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(0),
                                icon: Icon(Icons.arrow_back),
                                onPressed: () {
                                  setState(() {
                                    if (_step > 1) {
                                      _step -= 1;
                                      this._changeList(
                                          serviceTag['Step${_step}']["list"]);
                                    }
                                  });
                                },
                              ),
                              Text('服务标签 ${_step}/${serviceTag.length}'),
                              IconButton(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.all(0),
                                icon: Icon(Icons.arrow_forward),
                                onPressed: () {
                                  setState(() {
                                    if (_step < serviceTag.length) {
                                      _step += 1;
                                      this._changeList(
                                        serviceTag['Step${_step}']["list"],
                                      );
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                          Divider(
                            height: 8, //容器器⾼高度，不不是线的⾼高度 indent: 10, //左侧间距
                            color: Constants.COLOR_333333,
                          ),
                          SizedBox(height: 36),
                          Container(
                            height: 41,
                            width: 312,
                            constraints: BoxConstraints(
                              minWidth: double.infinity, //宽度尽可能大
                            ),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Constants.COLOR_1FB3C4,
                                borderRadius:
                                    BorderRadius.circular(14.0), //3像素圆角
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Positioned(
                                    left: 10.0,
                                    child: Text(
                                      "您提供的服务有哪些 ？ ${serviceTag['Step${_step}']["limit"]}",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Constants.COLOR_e5e5e5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 28),
                          // Container(child: Text('选择如下标签')),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: double.infinity, //宽度尽可能大
                            ),
                            child: Container(
                                height: 20,
                                child: Text(
                                  '选择如下标签',
                                  style: TextStyle(fontSize: 10),
                                )),
                          ),
                          SizedBox(height: 2),
                          Column(
                            children: <Widget>[
                              serviceTag['Step${_step}']["hasOr"]
                                  ? TabButton.createBtn(
                                      Constants.hasOr, _activeTag, (k) {
                                      List dataLists = k == 0
                                          ? serviceTag['Step${_step}']["list"]
                                          : [];
                                      this._changeList(dataLists);
                                      setState(() {
                                        _activeTag = k;
                                      });
                                    }, 0)
                                  : SizedBox(height: 0),
                              SizedBox(
                                  height: serviceTag['Step${_step}']["hasOr"]
                                      ? 10
                                      : 0),
                            ],
                          ),
                          Column(
                            children: btnGroup,
                          ),
                          serviceTag['Step${_step}']["hasInput"]
                              ? Column(
                                  children: <Widget>[
                                    Divider(
                                      height:
                                          16, //容器器⾼高度，不不是线的⾼高度 indent: 10, //左侧间距
                                      color: Constants.COLOR_333333,
                                    ),
                                    TabButton.createBtn(
                                        Constants.companyOr, _activeTag2, (k) {
                                      print(k);
                                      setState(() {
                                        _activeTag2 = k;
                                      });
                                    }, 0)
                                  ],
                                )
                              : SizedBox(height: 0),
                          serviceTag['Step${_step}']["hasInput"]
                              ? addCompany(_activeTag2, _nameGroup, (text) {
                                  setState(() {
                                    if (_nameGroup.length < 3) {
                                      _nameGroup.add(text);
                                    }
                                  });
                                }, (index) {
                                  setState(() {
                                    _nameGroup.removeAt(index);
                                  });
                                })
                              : SizedBox(height: 0),
                        ],
                      )
                    : Center(
                        child: Text('暂无数据'),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
