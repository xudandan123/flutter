import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constants.dart';

class AddCompany extends StatefulWidget {
  final int showIndex;
  final List nameGroup;
  final String title;
  final callback;
  final callback2;
  AddCompany({Key key, this.showIndex, this.nameGroup, this.title, this.callback, this.callback2})
      : super(key: key);
  @override
  _AddCompanyState createState() => _AddCompanyState();
}

class _AddCompanyState extends State<AddCompany> {
  TextEditingController _userEtController = TextEditingController();
  FocusNode nameFocusNode;

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
                        padding: EdgeInsets.all(0),
                        icon: Icon(Icons.control_point),
                        onPressed: () {
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
              SizedBox(height: 5),
              Container(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 8.0, // 主轴(水平)方向间距
                  children: nameArr,
                ),
              ),
            ],
          )
        : SizedBox(height: 0);
  }
}