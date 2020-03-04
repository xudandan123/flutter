import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constants.dart';
import 'package:flutter_app/view/home.dart';

class TalentDetail extends StatelessWidget {
  const TalentDetail({Key key}) : super(key: key);
  Widget _listTitle(title) {
    return Container(
      alignment: Alignment.center,
      height: 28,
      margin: EdgeInsets.only(top: 20),
      decoration: ShapeDecoration(
        color: Constants.COLOR_1FB3C4,
        shape: Border(
          left: BorderSide(
            width: 1,
            color: Color(0xFFA6A6A6),
          ),
          top: BorderSide(
            width: 1,
            color: Color(0xFFA6A6A6),
          ),
          right: BorderSide(
            width: 1,
            color: Color(0xFFA6A6A6),
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Constants.COLOR_EFF0F0,
        ),
      ),
    );
  }

  _listIntention(List dataList) {
    getDetails(data, type) {
      if (data != null && data.length != 0) {
        if (type != null) {
          if (type == "list") {
            return Column(
              children: data.map<Widget>((value) {
                return Container(
                  alignment: Alignment.centerLeft,
                  child: Text(value),
                );
              }).toList(),
            );
          } else if (type == "circle") {
            return Wrap(
              spacing: 6,
              runAlignment: WrapAlignment.start,
              runSpacing: 4,
              children: data.map<Widget>((value) {
                return Container(
                  padding: EdgeInsets.fromLTRB(20, 3, 20, 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Constants.COLOR_1FB3C4),
                  child: Text(
                    value,
                    style: TextStyle(color: Constants.COLOR_e5e5e5),
                  ),
                );
              }).toList(),
            );
          }
        } else {
          return Wrap(
            children: data.map<Widget>((value) {
              return Text(value);
            }).toList(),
          );
        }
      } else {
        return Text('');
      }
    }

    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(100.0),
        2: FixedColumnWidth(0.0),
      },
      border: TableBorder.all(
          color: Color(0xFFA6A6A6), width: 1.0, style: BorderStyle.solid),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: dataList.map((value) {
        return TableRow(
          decoration: BoxDecoration(
            color: Constants.COLOR_1FB3C4,
          ),
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: Text(
                value["text"],
                style: TextStyle(color: Constants.COLOR_e5e5e5),
              ),
            ),
            Container(
              constraints: BoxConstraints(minHeight: 32),
              color: Constants.COLOR_e5e5e5,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: getDetails(value["data"], value["type"]),
            ),
          ],
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom - 120;
    return Scaffold(
      backgroundColor: Constants.COLOR_1FB3C4,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          title: Text(''),
          backgroundColor: Constants.COLOR_1FB3C4,
          automaticallyImplyLeading: false,
          elevation: 0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Constants.COLOR_1FB3C4,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        child: new Text('返回'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(26, 30, 26, 10),
          child: Container(
            constraints:
                BoxConstraints(minHeight: screenHeight, minWidth: double.infinity),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: Constants.COLOR_e5e5e5),
            padding: EdgeInsets.fromLTRB(15, 10, 15, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'images/logo.png',
                    width: 40.0,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "T-MAP 人才地图",
                  style: TextStyle(
                      color: Constants.COLOR_1FB3C4,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Talent Match Analysis Portrait',
                      style: TextStyle(
                          fontSize: 12, color: Constants.COLOR_1FB3C4),
                    ),
                    Text('T1191228',
                        style: TextStyle(
                            fontSize: 12, color: Constants.COLOR_808080))
                  ],
                ),
                Divider(height: 5, color: Color(0xFFA6A6A6)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      IconData(0xe62f, fontFamily: 'AliIcon'),
                      color: Constants.COLOR_CCCCCC,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      IconData(0xe6a0, fontFamily: 'AliIcon'),
                      color: Constants.COLOR_CCCCCC,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      IconData(0xe6b3, fontFamily: 'AliIcon'),
                      color: Constants.COLOR_CCCCCC,
                    ),
                  ],
                ),
                Divider(height: 10, color: Color(0xFFA6A6A6)),
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 88,
                        height: 88,
                        margin: EdgeInsets.fromLTRB(0, 25, 0, 15),
                        decoration: BoxDecoration(
                          // 容器的背景颜色和背景图片
                          color: Constants.COLOR_CCCCCC,
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                        ),
                        child: Text("图片"),
                      ),
                      Text(
                        "张晓四",
                        style: TextStyle(
                            fontSize: 18,
                            color: Constants.COLOR_505050,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Divider(height: 20, color: Color(0xFFA6A6A6)),
                Center(
                  child: Text(
                    '13312341234  -  男  -  36  -  112345678@qq.com',
                    style: TextStyle(fontSize: 12, color: Color(0xFF383838)),
                  ),
                ),
                Divider(height: 20, color: Color(0xFFA6A6A6)),
                Container(
                  height: 40,
                  margin: EdgeInsets.only(bottom: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    // 容器的背景颜色和背景图片
                    border: Border.all(width: 1, color: Constants.COLOR_1FB3C4),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Text(
                    "顾问费  2000.00  元",
                    style: TextStyle(
                        color: Constants.COLOR_1FB3C4,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 5),
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Constants.COLOR_1FB3C4,
                          border: Border(
                            right: BorderSide(
                              width: 1,
                              color: Color(0xFFA6A6A6),
                            ),
                          ),
                        ),
                        child: Text(
                          "定向求职",
                          style: TextStyle(
                              color: Constants.COLOR_EFF0F0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 5),
                        height: 60.0,
                        decoration: BoxDecoration(
                         border: Border(
                            top: BorderSide(width: 1, color: Constants.COLOR_1FB3C4),
                            right: BorderSide(width: 1, color: Constants.COLOR_1FB3C4),
                            bottom: BorderSide(width: 1, color: Constants.COLOR_1FB3C4),
                          ),
                        ),
                        child: Text(''),
                      ),
                    ),
                  ],
                ),
                this._listTitle('求职意向'),
                this._listIntention(Constants.listIntentionTitle),
                this._listTitle('学历'),
                this._listIntention(Constants.educationList),
                this._listTitle('职业'),
                this._listIntention(Constants.occupation),
                this._listTitle('身份'),
                this._listIntention(Constants.identity),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: Constants.COLOR_808080)),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "T-MAP 数据与支付宝、芝麻信用直连，由人力资源区块链（HRBC）进行加密和认证。HRBC 已获国家网信办区块链信息服务备案。",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF383838)),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "T-MAP数据源于当事人本人填写，该信息内容和数据仅限用人单位招聘和评估人才工作之参考借鉴。任何用户或第三方对于使用该信息内容和数据所导致的任何结果，全民推荐软件及所有权人不承担任何形式下的法律责任。",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF383838)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
