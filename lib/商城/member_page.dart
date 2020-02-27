import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Test(),
    ));
  }
}

class Person {
  String name;
  Person(this.name);
  void printInfo() {
    print('xdd');
  }
}
class Web extends Person {
  int age;
  Web(String name, int age) : super(name){
    this.age = age;
  }
}
// Test() {
//   var a = new Web('xdd-张三', 15);
//   print(a.name);
//   print(a.age);
// }



abstract class Animal {
  eat();
}

class Dog extends Animal {
  @override
  eat() {
    print('小狗在吃骨头');
  }
  run() {
    print(123);
  }
}

Test() {
  int a = 123;
  Map<dynamic, dynamic> userInfo = {
    'a': a,
    2: '1',
    3: '1',
    4: '1'
  };
  print(userInfo['a']);
}
