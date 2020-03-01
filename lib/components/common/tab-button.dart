import 'package:flutter/material.dart';
import 'package:flutter_app/constants/constants.dart';

class TabButton {
  static createBtn(userTab, activeIndex, pressed, double marginS) {
    List<Widget> buttonList = [];
    for (int k = 0; k < userTab.length; k++) {
      buttonList.add(MyButton(
        describe: userTab[k],
        activeBtn: activeIndex == k,
        pressed: () {
          pressed(k);
        },
      ));
    }
    return Center(
      child: Container(
        // width: 250,
        margin: EdgeInsets.fromLTRB(marginS, 0, marginS, marginS != 0 ? 16 : 0),
        decoration: BoxDecoration(
          color: Constants.COLOR_e5e5e5,
          border: Border.all(color: marginS != 0 ? Constants.COLOR_CCCCCC : Constants.COLOR_808080, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(23.0)),
        ),
        child: Row(
          children: buttonList,
        ),
      ),
    );
    // return buttonList;
  }
}

class MyButton extends StatelessWidget {
  // final text;
  final pressed;
  // final double width;
  // final double height;
  final Map<String, dynamic> describe;
  final bool activeBtn;
  const MyButton({Key key, this.describe, this.pressed, this.activeBtn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.fromLTRB(
              this.describe['left'], 0, this.describe['right'], 0),
          height: this.describe['height'],
          alignment: Alignment.center,
          decoration: BoxDecoration(
            // 容器的背景颜色和背景图片
            color: this.activeBtn ? Constants.COLOR_1FB3C4 : Constants.COLOR_e5e5e5,
            borderRadius: BorderRadius.all(Radius.circular(23.0)),
          ),
          child: Text(
            this.describe["text"],
            style: TextStyle(
                color: this.activeBtn ? Constants.COLOR_e5e5e5 : Constants.COLOR_808080,
                fontSize: 14),
          ),
        ),
        onTap: () {
          this.pressed();
        },
      ),
    );
  }
}
