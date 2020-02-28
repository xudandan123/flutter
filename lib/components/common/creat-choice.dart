import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constants.dart';

  creatChoice(List dataList, int listNum, activeNum, calback, calback2) {
    List<Widget> btnGroupList = [];
    List<Widget> btnGroups = [];
    List activeId = [...activeNum];
    Widget _childBtn(int i) {
      return GestureDetector(
        child: Container(
          height: 32,
          margin: EdgeInsets.only(bottom: 10),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: dataList[i]['text'] != '' ? Border.all(
                  color: activeNum.indexOf(dataList[i]['id']) != -1
                      ? Constants.COLOR_1FB3C4
                      :Constants.COLOR_8080,
                  width: 1) : null,
              borderRadius: BorderRadius.circular(16.0), //3像素圆角
            ),
            child: Center(
              child: Text(
                dataList[i]['text'],
                style: TextStyle(
                    color:
                        activeNum.indexOf(dataList[i]['id']) != -1 ? Constants.COLOR_1FB3C4 : Colors.black,
                    fontSize: 14),
              ),
            ),
          ),
        ),
        onTap: () {
          calback2(dataList[i]['id']);
          activeId.indexOf(dataList[i]['id']) == -1 ? activeId.add(dataList[i]['id']) : activeId.remove(dataList[i]['id']);
          creatChoice(dataList, listNum, activeId, calback, calback2);
        },
      );
    }

    for (int i = 0; i < dataList.length; i++) {
      if (listNum == 1) {
        btnGroupList.add(_childBtn(i));
      } else if (listNum == 2) {
        btnGroupList.add(
          Expanded(
            flex: 8,
            child: _childBtn(i),
          ),
        );
      }
    }
    if (listNum == 1) {
      btnGroups = btnGroupList.map((value) {
        return value;
      }).toList();
    } else if (listNum == 2) {
      for (int j = 0; j < btnGroupList.length; j++) {
        if (j % 2 == 0 && j + 1 < btnGroupList.length) {
          btnGroups.add(Row(children: <Widget>[
            btnGroupList[j],
            Expanded(
              flex: 1,
              child: SizedBox(width: 0),
            ),
            btnGroupList[j + 1]
          ]));
        } else if (j % 2 == 0) {
          btnGroups.addAll([
            Row(children: <Widget>[
              btnGroupList[j],
              Expanded(
                flex: 9,
                child: SizedBox(width: 0),
              )
            ]),
          ]);
        }
      }
    }
    calback(btnGroups);
  }