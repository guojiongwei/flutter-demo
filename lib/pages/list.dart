import 'package:flutter/material.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('列表')),
      body: Column(children: <Widget>[
        Text('列表页面')
      ]),
    );
  }
}