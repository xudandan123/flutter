import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constants.dart';

class AddCompany extends StatefulWidget {
  final int showIndex;
  final List nameGroup;
  final String title;
  final callback;
  final callback2;
  AddCompany(
      {Key key,
      this.showIndex,
      this.nameGroup,
      this.title,
      this.callback,
      this.callback2})
      : super(key: key);
  @override
  _AddCompanyState createState() => _AddCompanyState();
}

class _AddCompanyState extends State<AddCompany> {
  TextEditingController _userEtController = TextEditingController();
  FocusNode nameFocusNode;
  bool _showList = false;

  @override
  void dispose() {
    _userEtController.dispose();
    nameFocusNode.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    nameFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> nameArr = [];
    for (int i = 0; i < widget.nameGroup.length; i++) {
      nameArr.add(
        Chip(
          onDeleted: () {
            widget.callback2(i);
          },
          deleteIcon: Icon(Icons.cancel),
          deleteIconColor: Color.fromRGBO(0, 0, 0, 0.3),
          backgroundColor: Color(0xFF81CBD4),
          labelStyle: TextStyle(color: Constants.COLOR_e5e5e5),
          label: Text(widget.nameGroup[i]),
        ),
      );
    }
    return widget.showIndex == 0
        ? Column(
            children: <Widget>[
              SizedBox(height: 12),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: double.infinity, //宽度尽可能大
                ),
                child: Container(
                    height: 20,
                    child: Text(
                      widget.title,
                      style: TextStyle(fontSize: 10),
                    )),
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 32),
                child: new TextField(
                  focusNode: nameFocusNode,
                  controller: _userEtController,
                  cursorColor: Colors.grey,
                  textAlignVertical: TextAlignVertical(y: 1),
                  onChanged: (e) {
                    setState(() {
                      _showList = true;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: '',
                    hintStyle: TextStyle(fontSize: 14),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          BorderSide(width: 1, color: Constants.COLOR_808080),
                    ),
                    suffixIcon: IconButton(
                        color: Constants.COLOR_999999,
                        iconSize: 26,
                        padding: EdgeInsets.only(right: 6),
                        alignment: Alignment.centerRight,
                        icon: Icon(Icons.control_point),
                        onPressed: () {
                          setState(() {
                            _showList = false;
                          });
                          widget.callback(_userEtController.text);
                          WidgetsBinding.instance.addPostFrameCallback(
                              (_) => _userEtController.clear());
                          FocusScope.of(context).requestFocus(FocusNode());
                        }),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                            width: 1, color: Constants.COLOR_808080)),
                    filled: true,
                    fillColor: Constants.COLOR_e5e5e5,
                  ),
                ),
              ),
              Container(
                constraints:
                    BoxConstraints(minWidth: double.infinity, minHeight: 50),
                child: Stack(
                  alignment: Alignment.topLeft, //指定未定位或部分定位widget的对齐方式
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                          spacing: 8.0, // 主轴(水平)方向间距
                          children: nameArr,
                        ),
                      ),
                    ),
                    this._showList == true
                        ? Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showList = false;
                                  });
                                  widget.callback(_userEtController.text);
                                  WidgetsBinding.instance.addPostFrameCallback(
                                      (_) => _userEtController.clear());
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                },
                                child: Container(
                                  color: Constants.COLOR_CCCCCC,
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 5),
                                  constraints: BoxConstraints(
                                      minWidth: double.infinity, //宽度尽可能大
                                      minHeight: 30.0 //最小高度为50像素
                                      ),
                                  child: Text('测试'),
                                ),
                              ),
                            ],
                          )
                        : SizedBox(height: 0),
                  ],
                ),
              ),
            ],
          )
        : SizedBox(height: 0);
  }
}
