import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constants.dart';

creatChoice(List dataList, int listNum, activeNum, callback, callback2) {
  List<Widget> btnGroupList = [];
  List<Widget> btnGroups = [];
  List activeId = [...activeNum];
  // print(listNum);
  if (listNum == 3) {
    for (int i = 0; i < dataList.length; i++) {
      btnGroups.add(GestureDetector(
        child: Container(
          height: 32,
          constraints: BoxConstraints(minWidth: 69),
          margin: EdgeInsets.only(bottom: 6),
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
          decoration: BoxDecoration(
            border: dataList[i]['text'] != ''
                ? Border.all(
                    color: activeNum.indexOf(dataList[i]['id']) != -1
                        ? Constants.COLOR_1FB3C4
                        : Constants.COLOR_808080,
                    width: 1)
                : null,
            borderRadius: BorderRadius.circular(16.0), //3像素圆角
          ),
          child: Text(
            dataList[i]["text"],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: activeNum.indexOf(dataList[i]['id']) != -1
                  ? Constants.COLOR_1FB3C4
                  : Constants.COLOR_505050,
            ),
          ),
        ),
        onTap: () {
          callback2(dataList[i]['id']);
          activeId.indexOf(dataList[i]['id']) == -1
              ? activeId.add(dataList[i]['id'])
              : activeId.remove(dataList[i]['id']);
          creatChoice(dataList, listNum, activeId, callback, callback2);
        },
      ));
    }
    callback(btnGroups);
    return;
  }
  Widget _childBtn(int i) {
    return GestureDetector(
      child: Container(
        height: 32,
        margin: EdgeInsets.only(bottom: 10),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: dataList[i]['text'] != ''
                ? Border.all(
                    color: activeNum.indexOf(dataList[i]['id']) != -1
                        ? Constants.COLOR_1FB3C4
                        : Constants.COLOR_808080,
                    width: 1)
                : null,
            borderRadius: BorderRadius.circular(16.0), //3像素圆角
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                left: 15.0,
                child: Text(
                  dataList[i]['text'],
                  style: TextStyle(
                      color: activeNum.indexOf(dataList[i]['id']) != -1
                          ? Constants.COLOR_1FB3C4
                          : Constants.COLOR_505050,
                      fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        callback2(dataList[i]['id']);
        activeId.indexOf(dataList[i]['id']) == -1
            ? activeId.add(dataList[i]['id'])
            : activeId.remove(dataList[i]['id']);
        creatChoice(dataList, listNum, activeId, callback, callback2);
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
  callback(btnGroups);
}
