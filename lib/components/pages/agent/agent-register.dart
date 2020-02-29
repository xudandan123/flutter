import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app/constants/constants.dart';
import 'package:flutter_app/data.dart';
import 'package:flutter_app/components/common/tab-button.dart';
import 'package:flutter_app/components/common/creat-choice.dart';
import 'package:flutter_app/components/common/input-add.dart';
import 'package:flutter_app/components/common/toast.dart';

class AgentRegister extends StatefulWidget {
  int step;
  AgentRegister({Key key, this.step}) : super(key: key);
  @override
  _AgentRegisterState createState() => _AgentRegisterState(this.step);
}

class _AgentRegisterState extends State<AgentRegister> {
  int step;
  int _activeBtn = 0;// 顶部切换按钮的索引
  int _activeTag = 0;// 有还是没有切换的索引
  int _activeTag2 = 0;// 另一个切换的索引
  int _step = 1;// 当前的页码
  List<Widget> btnGroup = []; // 选择按钮数组
  List _nameGroup = []; //输入按钮数组
  Map agentUserInfo = {};
  _AgentRegisterState(this.step);
  @override
  void initState() {
    super.initState();
    _step = step;
    Map currentMap = serviceTag['Step${_step}'];
    this._changeList(currentMap["list"], currentMap["type"], []);
  }
  _changeList(dataList, type, activeId) {
    creatChoice(dataList,type , activeId, (btnGroups) {
      setState(() {
        btnGroup = btnGroups;
      });
    }, (id) {
      String key = serviceTag['Step${_step}']["key"];
      setState(() {
        btnGroup = [];
        if(agentUserInfo.isEmpty){
          agentUserInfo = {
            key:{
              "ids": [id]
            }
          };
        }else{
          Map _currentInfo = {...agentUserInfo};
          if(_currentInfo[key] != null){
            _currentInfo[key]["ids"].add(id);
          }else{
            _currentInfo[key] = {
              "ids": [id]
            };
          }
          agentUserInfo = _currentInfo;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.COLOR_1FB3C4,
      appBar: AppBar(
        title: Text('  我是顾问-个人中心'),
        backgroundColor: Constants.COLOR_1FB3C4,
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        bottom: PreferredSize(
          child: TabButton.createBtn(Constants.userTab, _activeBtn, (k) {
            if (k == 0) {
              List ids = [];
              Map currentMap = serviceTag['Step${_step}'];
              if(agentUserInfo.isEmpty == false && agentUserInfo[currentMap["key"]] != null){
                ids = agentUserInfo[currentMap["key"]]["ids"];
              }
              this._changeList(currentMap["list"],currentMap["type"], ids);
            }
            // print();
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
              // SizedBox(height: 10),
              Container(
                constraints:
                    BoxConstraints(minHeight: 540, minWidth: double.infinity),
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
                              _step > 1 ? IconButton(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(0),
                                icon: Icon(Icons.arrow_back),
                                onPressed: () {
                                  if (_step > 1) {
                                    List ids = [];
                                    Map currentMap = serviceTag['Step${_step-1}'];
                                    if(agentUserInfo.isEmpty == false && agentUserInfo[currentMap["key"]] != null){
                                      ids = agentUserInfo[currentMap["key"]]["ids"];
                                    }
                                    this._changeList(currentMap["list"], currentMap["type"], ids);
                                    setState(() {
                                      _step -= 1;
                                    });
                                  }
                                },
                              ) : SizedBox(width: 0),
                              Text(serviceTag['Step${_step}']["steptitle"]),
                              IconButton(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.all(0),
                                icon: Icon(Icons.arrow_forward),
                                onPressed: () {
                                  Map currentMap = serviceTag['Step${_step+1}'];
                                  List ids = [];
                                  if (_step < serviceTag.length && agentUserInfo[serviceTag['Step${_step}']["key"]] != null) {
                                    if(agentUserInfo.isEmpty == false && agentUserInfo[currentMap["key"]] != null){
                                      ids = agentUserInfo[currentMap["key"]]["ids"];
                                    }
                                    this._changeList(currentMap["list"], currentMap["type"], ids);
                                    setState(() {
                                      _step += 1;
                                    });
                                  }
                                },
                              ),
                            ],
                          ),
                          Divider(
                            height: 8, //容器器⾼高度，不不是线的⾼高度 indent: 10, //左侧间距
                            color: Constants.COLOR_333333,
                          ),
                          Text("请先将信息填写完整", style: TextStyle(fontSize: 12, color: Colors.red),),
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
                                      serviceTag['Step${_step}']['titles'],
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
                                      Map currentMap = serviceTag['Step${_step}'];
                                      List dataLists = k == 0 ? currentMap["list"] : [];
                                      List ids = [];
                                      if(agentUserInfo.isEmpty == false && agentUserInfo[currentMap["key"]] != null){
                                        ids = agentUserInfo[currentMap["key"]]["ids"];
                                      }
                                      this._changeList(dataLists,currentMap["type"], ids);
                                      setState(() {
                                        _activeTag = k;
                                      });
                                    }, 0)
                                  : SizedBox(height: 0),
                              SizedBox(height: serviceTag['Step${_step}']["hasOr"] ? 10 : 0),
                            ],
                          ),
                          Column(
                            children: btnGroup,
                          ),
                          serviceTag['Step${_step}']["hasInput"]
                              ? Column(
                                  children: <Widget>[
                                    SizedBox(height: 46),
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
                                    }else {
                                      Toast.toast(context, msg: "不能超过3");
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
