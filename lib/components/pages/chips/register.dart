import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_app/constants/constants.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

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

Forms2(bool inWork, Function callback) {
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
        onTap: () {
          callback(!inWork);
        },
        child: Container(
          height: 32,
          decoration: BoxDecoration(
            // 容器的背景颜色和背景图片
            border: Border.all(
                width: 1,
                color:
                    !inWork ? Constants.COLOR_1FB3C4 : Constants.COLOR_808080),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Center(
            child: Text(
              "无工作单位",
              style: TextStyle(
                  color: !inWork
                      ? Constants.COLOR_1FB3C4
                      : Constants.COLOR_808080),
            ),
          ),
        ),
      ),
      inWork
          ? Column(
              children: <Widget>[
                SizedBox(height: 10),
                Container(
                  constraints: BoxConstraints(maxHeight: 32),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical(y: 1), // 文字居中
                    decoration: new InputDecoration(
                      hintText: '请输入工作单位全称',
                      hintStyle: TextStyle(fontSize: 14),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(width: 1, color: Constants.COLOR_808080),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(width: 1, color: Constants.COLOR_808080),
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
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(width: 1, color: Constants.COLOR_808080),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(width: 1, color: Constants.COLOR_808080),
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
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(width: 1, color: Constants.COLOR_808080),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(width: 1, color: Constants.COLOR_808080),
                      ),
                    ),
                    onSaved: (val) {},
                  ),
                ),
                SizedBox(height: 30),
              ],
            )
          : SizedBox(height: 30),
    ],
  );
}

class Forms extends StatefulWidget {
  final callback;
  Forms({Key key, this.callback}) : super(key: key);
  @override
  _FormsState createState() => new _FormsState();
}

class _FormsState extends State<Forms> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  DateTime _selectedDateTime = DateTime.now(); // 默认日期

  @override
  Widget build(BuildContext context) {
    void _showDatePicker() {
      DatePicker.showDatePicker(
        context,
        pickerTheme: DateTimePickerTheme(
          showTitle: true,
          confirm: Text('确定', style: TextStyle(color: Constants.COLOR_1FB3C4)),
          cancel: Text('取消', style: TextStyle(color: Constants.COLOR_333333)),
        ),
        minDateTime: DateTime.parse("1960-01-01"), //选择器上可选择的最早时间
        maxDateTime: DateTime.parse("2021-12-01"), //选择器上可选择的最晚时间
        initialDateTime: _selectedDateTime, //选择器的当前选中时间
        dateFormat: "yyyy-MMMM", //时间格式
        locale: DateTimePickerLocale.zh_cn, //国际化配置
        onChange: (dateTime, List<int> index) {
          setState(() {
            _selectedDateTime = dateTime;
          });
        },
        onConfirm: (dateTime, List<int> index) {
          setState(() {
            _selectedDateTime = dateTime;
            widget.callback({"date": formatDate(this._selectedDateTime, [yyyy, "-", mm])});
          });
        },
      );
    }

    return new Container(
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
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(width: 1, color: Constants.COLOR_808080),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(width: 1, color: Constants.COLOR_808080),
                  ),
                ),
                onChanged: (val) {
                  setState(() {
                    widget.callback({"school": val});
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
                  hintText: '请输入学院全称',
                  hintStyle: TextStyle(fontSize: 14),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(width: 1, color: Constants.COLOR_808080),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(width: 1, color: Constants.COLOR_808080),
                  ),
                ),
                onChanged: (val) {
                  setState(() {
                    widget.callback({"college": val});
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
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(width: 1, color: Constants.COLOR_808080),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        BorderSide(width: 1, color: Constants.COLOR_808080),
                  ),
                ),
                onChanged: (val) {
                  widget.callback({"major": val});
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
                FocusScope.of(context).requestFocus(FocusNode());
                widget.callback({"date": formatDate(this._selectedDateTime, [yyyy, "-", mm])});
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
                      this._selectedDateTime != null
                          ? formatDate(this._selectedDateTime, [yyyy, "-", mm])
                          : '请选择毕业时间',
                      style: TextStyle(fontSize: 14, color: Color(0xFF777777)),
                    ),
                    Icon(
                      Icons.schedule,
                      color: Color(0xFF777777),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            // GestureDetector(
            //   child: Container(
            //     alignment: Alignment.center,
            //     width: 112,
            //     height: 32,
            //     decoration: BoxDecoration(
            //       // 容器的背景颜色和背景图片
            //       border: Border.all(color: Constants.COLOR_1FB3C4, width: 1),
            //       borderRadius: BorderRadius.all(Radius.circular(16.0)),
            //     ),
            //     child: Text(
            //       '保存',
            //       style: TextStyle(color: Constants.COLOR_1FB3C4),
            //     ),
            //   ),
            //   onTap: () {
            //     // this.pressed();
            //     this._forSubmitted();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
