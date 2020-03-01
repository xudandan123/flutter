import 'package:flutter/material.dart';
// import 'package:date_format/date_format.dart';
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

// Forms(){
//   return Text("form");
// }

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => new _FormsState();
}

class _FormsState extends State<Forms> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  String _name = '';

  String _password = '';

  DateTime _selectedDate = DateTime.now(); //当前选中的日期

  void _forSubmitted() {
    var _form = _formKey.currentState;

    if (_form.validate()) {
      _form.save();
      print(_name);
      print(_password);
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
        initialDate: _selectedDate, //选中的日期
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
                obscureText: true,
                validator: (val) {
                  return val.length < 4 ? "密码长度错误" : null;
                },
                onSaved: (val) {
                  _password = val;
                },
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
                child: Text('保存', style: TextStyle(color: Constants.COLOR_1FB3C4),),
              ),
              onTap: () {
                // this.pressed();
              },
            ),
            // InkWell(
            //     onTap: () {
            //       //调起日期选择器
            //       _showDatePicker();
            //     },
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: <Widget>[
            //         Text(formatDate(
            //             this._selectedDate, [yyyy, "-", mm, "-", "dd"])),
            //         Icon(Icons.arrow_drop_down)
            //       ],
            //     ),
            //   ),
            // FlatButton(
            //   color: Colors.red,
            //   highlightColor: Colors.blue[700],
            //   colorBrightness: Brightness.dark,
            //   splashColor: Colors.grey,
            //   child: Text("保存"),
            //   shape: RoundedRectangleBorder(

            //       borderRadius: BorderRadius.circular(20.0)),
            //   onPressed: () {},
            // ),
            // RaisedButton(
            //   child: Text("保存"),
            //   onPressed: () {
            //     this._forSubmitted();
            //   },
            // ),
            Text(_name)
          ],
        ),
      ),
    );
  }
}
