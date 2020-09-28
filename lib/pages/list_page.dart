import 'package:flutter/material.dart';
import 'package:myapp/components/header.dart';
class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void toParent(String text){
      print('子传父$text');
    }
    return Scaffold(
      appBar: AppBar(title: Text('列表')),
      body: Column(children: <Widget>[
        Text('列表页面'),
        Header(name: '郭炯韦哈哈哈', toParent: toParent)
      ]),
    );
  }
}