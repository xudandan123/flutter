import 'package:flutter/material.dart';
// import 'package:flutter_app/Demo/model.dart';
import 'package:flutter_app/data.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int _activeBtn = 0;
  List<Widget> btnGroup = [];
  _createBtn(int activeIndex) {
    return MyButton(
      text: '自定义按钮${activeIndex + 1}',
      height: 38,
      width: 120,
      activeBtn: _activeBtn == activeIndex,
      pressed: () {
        if (activeIndex == 0) {
          _creatChoice(serviceTag['Step1']);
        } else {
          _creatChoice(serviceTag['Step2']);
        }
        setState(() {
          _activeBtn = activeIndex;
        });
      },
    );
  }

  _creatChoice(List dataList, [activeNum]) {
    List<Widget> btnGroupList = [];
    List<Widget> btnGroups = [];
    for (int i = 0; i < dataList.length; i++) {
      btnGroupList.add(Expanded(
          flex: 8,
          child: GestureDetector(
            child: Container(
              height: 40,
              margin: EdgeInsets.only(bottom: 10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: activeNum == i ? Colors.blue : Color(0xDDDDDDDD),
                      width: 1),
                  borderRadius: BorderRadius.circular(20.0), //3像素圆角
                ),
                child: Center(
                  child: Text(
                    dataList[i]['text'],
                    style: TextStyle(
                        color: activeNum == i ? Colors.blue : Colors.black,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            onTap: () {
              print("当前数据id为---${dataList[i]['id']}");
              setState(() {
                btnGroup = [];
              });
              _creatChoice(dataList, i);
            },
          )));
    }
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
    setState(() {
      btnGroup = btnGroups;
    });
  }

  @override
  void initState() {
    super.initState();
    _creatChoice(serviceTag['Step1']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('xdd'),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // TextXdd(),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xDDDDDDDD), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(23.0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[_createBtn(0), _createBtn(1)],
                      ))),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: btnGroup,
                ),
              ),
            ],
          ),
        ));
  }
}

class MyButton extends StatefulWidget {
  // MyButton({Key key}) : super(key: key);
  final text;
  final pressed;
  final double width;
  final double height;
  final bool activeBtn;
  const MyButton(
      {this.text = '',
      this.pressed = null,
      this.width = 80,
      this.height = 30,
      this.activeBtn = false});
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  // var _activeBtn = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Container(
          height: widget.height,
          width: widget.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            // 容器的背景颜色和背景图片
            color: widget.activeBtn ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(23.0)),
          ),
          child: Text(
            widget.text,
            style: TextStyle(
                color: widget.activeBtn ? Colors.white : Colors.black),
          ),
        ),
        onTap: () {
          widget.pressed();
        },
      ),
    );
  }
}
