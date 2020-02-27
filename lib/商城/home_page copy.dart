import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // getHttp().then((res)=>print(res)); // http请求
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        centerTitle: false,
      ),
      // Create the SelectionButton widget in the next step.
      body: Center(child: SelectionButton()),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text("接口"),
      ),
    );
  }

  getHttp()async{
    try{
      Response response;
      response = await Dio().get(
        "https://www.studyinghome.com/mock/5e4933e27f1250195fcbc7f9/xudandan123/getUserInfo",
        //  queryParameters:parames // post接口要传的参数parames
      );
      return response;
    }catch(e){
      return e;
    }
  }
}
class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Pick an option, any option!'),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );

    // 等选择界面返回结果，先隐藏之前的 snackbars，结果显示在新的 snackbars 里)
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
      backgroundColor: Color(0xEEEEEEEE),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'Yep!');
                },
                child: Text('Yep!'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'Nope!');
                },
                child: Text('Nope.'),
              ),
            ),
            SaveData(title: '第一个按钮'),
            SaveData(title: '第二个按钮',),
            Container(
              decoration: BoxDecoration( // 容器的背景颜色和背景图片
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              padding: const EdgeInsets.all(15.0),
              margin: const EdgeInsets.all(15.0),
              child: Column(
                //测试Row对齐方式，排除Column默认居中对齐的干扰
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("java工程师", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                      Text("13K-18K", style: TextStyle(color: Color.fromRGBO(31,179,196,1), fontSize: 16, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
//                        Text(" I am Jack ",textAlign: TextAlign.right),
                        Container(
                          width: 210,
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: 100,
                                ),
                                padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                                decoration: BoxDecoration( // 容器的背景颜色和背景图片
                                  color: Color(0xDDDDDDDD),
                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                ),
                                child: Text(
                                  '呼和浩特市 XX区',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                //                        height: 40.0,
                              ),
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: 100,
                                ),
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                                decoration: BoxDecoration( // 容器的背景颜色和背景图片
                                  color: Color(0xDDDDDDDD),
                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                ),
                                child: Text(
                                  '呼和浩特市 XX区',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                //                        height: 40.0,
                              ),
                            ],
                          ),
                        ),
                        Text(" I am Jack ",textAlign: TextAlign.right,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.yellow),),
                      ]
                  ),
                  new Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.up,
                    children: <Widget>[
                      Text(" hello world ", style: TextStyle(fontSize: 30.0),),
                      Text(" I am Jack "),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SaveData extends StatefulWidget {
  SaveData({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SaveDataState createState() => _SaveDataState();
}

class _SaveDataState extends State<SaveData> {
  var _border = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
      child: Container(
        margin: EdgeInsets.only(left: 40, top: 40),
        child: new Material(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child: new Ink(
            //设置背景
            decoration: new BoxDecoration(
              //背景
              color: Colors.white,
              //设置四周圆角 角度
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //设置四周边框
              border: new Border.all(width: 1, color: _border ? Colors.red : Color(0xCCCCCCCC)),
            ),
            child: new InkResponse(
              borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
              //点击或者toch控件高亮时显示的控件在控件上层,水波纹下层
              highlightShape: BoxShape.rectangle,
              //.InkResponse内部的radius这个需要注意的是，我们需要半径大于控件的宽，如果radius过小，显示的水波纹就是一个很小的圆，
              //水波纹的半径
              radius: 300.0,
              //水波纹的颜色
              splashColor: Colors.white,
              //true表示要剪裁水波纹响应的界面 false不剪裁 如果控件是圆角不剪裁的话水波纹是矩形
              containedInkWell: true,
              //点击事件
              onTap: () {
                print(widget.title);
                setState(() {
                  _border = !_border;
                });
              },
              child: Container(
                //设置 child 居中
                alignment: Alignment(0, 0),
                height: 50,
                width: 300,
                child: Text("点击 Container 圆角边框"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


