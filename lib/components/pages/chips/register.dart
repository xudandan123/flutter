import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_app/constants/constants.dart';

Images() {
  return Column(
    children: <Widget>[
      Text(
        "仅好友可见",
        style: TextStyle(
            fontSize: 14,
            color: Constants.COLOR_1FB3C4,
            fontWeight: FontWeight.w500),
      ),
      SizedBox(height: 10),
      Text(
        "展示自己，提高竞争力",
        style: TextStyle(fontSize: 12, color: Constants.COLOR_505050),
      ),
      SizedBox(height: 15),
      Container(
        width: 180,
        height: 180,
        decoration: BoxDecoration(
          border: Border.all(color: Constants.COLOR_808080, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        child: Center(
            child: Icon(
          Icons.add_circle_outline,
          size: 40,
          color: Constants.COLOR_999999,
        )),
      ),
    ],
  );
}

Forms2() {
  return Column(
    children: <Widget>[
      Text(
        "以下信息仅好友可见",
        style: TextStyle(
            fontSize: 14,
            color: Constants.COLOR_1FB3C4,
            fontWeight: FontWeight.w500),
      ),
      ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: double.infinity, //宽度尽可能大
        ),
        child: Container(
            height: 20,
            child: Text(
              '请填写工作单位信息',
              style: TextStyle(fontSize: 10),
            )),
      ),
      GestureDetector(
        onTap: () {},
        child: Container(
          height: 32,
          decoration: BoxDecoration(
            // 容器的背景颜色和背景图片
            border: Border.all(width: 1, color: Constants.COLOR_808080),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Center(
            child: Text("无工作单位"),
          ),
        ),
      ),
      SizedBox(height: 10),
      Container(
        constraints: BoxConstraints(maxHeight: 32),
        child: TextFormField(
          textAlignVertical: TextAlignVertical(y: 1), // 文字居中
          decoration: new InputDecoration(
            hintText: '请输入工作单位全称',
            hintStyle: TextStyle(fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(width: 1, color: Constants.COLOR_808080),
            ),
          ),
          onSaved: (val) {},
        ),
      ),
      SizedBox(height: 10),
      Container(
        constraints: BoxConstraints(maxHeight: 32),
        child: TextFormField(
          textAlignVertical: TextAlignVertical(y: 1), // 文字居中
          decoration: new InputDecoration(
            hintText: '请输入部门全称',
            hintStyle: TextStyle(fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(width: 1, color: Constants.COLOR_808080),
            ),
          ),
          onSaved: (val) {},
        ),
      ),
      SizedBox(height: 10),
      Container(
        constraints: BoxConstraints(maxHeight: 32),
        child: TextFormField(
          textAlignVertical: TextAlignVertical(y: 1), // 文字居中
          decoration: new InputDecoration(
            hintText: '请输入岗位名称',
            hintStyle: TextStyle(fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(width: 1, color: Constants.COLOR_808080),
            ),
          ),
          onSaved: (val) {},
        ),
      ),
      SizedBox(height: 30),
    ],
  );
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => new _FormsState();
}

class _FormsState extends State<Forms> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  String _name = '';

  String _password = '';

  DateTime _selectedDate; //当前选中的日期

  void _forSubmitted() {
    var _form = _formKey.currentState;

    if (_form.validate()) {
      _form.save();
      print(_name);
      print(_password);
      print(_selectedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    //调起日期选择器
    _showDatePicker() {
      //获取异步方法里面的值的第一种方式：then
      showDatePicker(
        //如下四个参数为必填参数
        context: context,
        initialDate: DateTime.now(), //选中的日期
        firstDate: DateTime(1980), //日期选择器上可选择的最早日期
        lastDate: DateTime(2100), //日期选择器上可选择的最晚日期
      ).then((selectedValue) {
        setState(() {
          //将选中的值传递出来
          this._selectedDate = selectedValue;
        });
      });
    }
    return new Container(
      // padding: const EdgeInsets.all(16.0),
      child: new Form(
        key: _formKey,
        child: new Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: double.infinity, //宽度尽可能大
              ),
              child: Container(
                height: 20,
                child: Text(
                  '请填写毕业信息',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 32),
              child: TextFormField(
                textAlignVertical: TextAlignVertical(y: 1), // 文字居中
                decoration: new InputDecoration(
                  hintText: '请输入学校全称',
                  hintStyle: TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(width: 1, color: Constants.COLOR_808080),
                  ),
                ),
                onSaved: (val) {
                  setState(() {
                    _name = val;
                  });
                },
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 32),
              child: TextFormField(
                textAlignVertical: TextAlignVertical(y: 1), // 文字居中
                decoration: new InputDecoration(
                  hintText: '请输入学科专业全称',
                  hintStyle: TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(width: 1, color: Constants.COLOR_808080),
                  ),
                ),
                onSaved: (val) {
                  _password = val;
                },
              ),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                //调起日期选择器
                _showDatePicker();
              },
              child: Container(
                height: 32,
                padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                constraints: BoxConstraints(minWidth: double.infinity),
                decoration: BoxDecoration(
                  border: Border.all(color: Constants.COLOR_808080, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      this._selectedDate != null ?
                      formatDate(this._selectedDate, [yyyy, "-", mm, "-", "dd"]) :
                      '请选择毕业时间',
                      style: TextStyle(fontSize: 14, color: Color(0xFF777777)),
                    ),
                    Icon(Icons.schedule, color: Color(0xFF777777),)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                width: 112,
                height: 32,
                decoration: BoxDecoration(
                  // 容器的背景颜色和背景图片
                  border: Border.all(color: Constants.COLOR_1FB3C4, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                child: Text(
                  '保存',
                  style: TextStyle(color: Constants.COLOR_1FB3C4),
                ),
              ),
              onTap: () {
                // this.pressed();
                this._forSubmitted();
              },
            ),
          ],
        ),
      ),
    );
  }
}
