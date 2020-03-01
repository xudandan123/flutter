import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constants.dart';

addCompany(_activeTag2, nameGroup, calback, calback2) {
  List<Widget> nameArr = [];
  TextEditingController _userEtController = TextEditingController();
  for (int i = 0; i < nameGroup.length; i++) {
    nameArr.add(
      Chip(
        onDeleted: () {
          calback2(i);
        },
        deleteIcon: Icon(Icons.cancel),
        deleteIconColor: Color.fromRGBO(0, 0, 0, 0.3),
        backgroundColor: Color(0xFF81CBD4),
        labelStyle: TextStyle(color: Constants.COLOR_e5e5e5),
        label: Text(nameGroup[i]),
      ),
    );
  }
  return _activeTag2 == 0
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
                    '请输入单位名称,最多添加3个',
                    style: TextStyle(fontSize: 10),
                  )),
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 32),
              child: new TextField(
                  controller: _userEtController,
                  cursorColor: Colors.grey,
                  textAlignVertical: TextAlignVertical(y: 1),
                  decoration: InputDecoration(
                    hintText: '请输入单位名称',
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
                          calback(_userEtController.text);
                          // _userEtController.clear();
                          WidgetsBinding.instance.addPostFrameCallback(
                              (_) => _userEtController.clear());
                        }),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                            width: 1, color: Constants.COLOR_808080)),
                    filled: true,
                    fillColor: Constants.COLOR_e5e5e5,
                  )),
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
