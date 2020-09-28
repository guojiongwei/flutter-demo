/*
 * @Author: your name
 * @Date: 2020-09-08 08:47:26
 * @LastEditTime: 2020-09-28 18:07:29
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\pages\check.dart
 */
import 'package:flutter/material.dart';
import 'package:myapp/dao/check_dao.dart';

class Check extends StatefulWidget {
  @override
  _Check createState() => _Check();
}

class _Check extends State<Check> {
  @override
  void initState() {
    print(checkListData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '我的审核',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        body: ListView(children: <Widget>[
          Container(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: _items(context),
            ),
          )
        ]));
  }

  _items(BuildContext context) {
    List<Widget> items = [];
    checkListData.forEach((element) {
      items.add(Container(
        height: 60,
        child: Center(
          child: Text(element['title']),
        ),
      ));
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items,
    );
  }
}
