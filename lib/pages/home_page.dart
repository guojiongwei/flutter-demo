/*
 * @Author: your name
 * @Date: 2020-09-08 08:47:26
 * @LastEditTime: 2020-09-28 17:37:00
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\pages\home.dart
 */
import 'package:flutter/material.dart';
import 'package:myapp/pages/list_page.dart';
// import 'package:myapp/pages/sdk_test/batterylevel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        '首页',
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      )),
      body: Column(children: <Widget>[
        Text('首页页面'),
        FlatButton(
          child: Text('push去列表页面'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return List();
            }));
          },
        ),

        FlatButton(
          child: Text('路由表去列表页面'),
          onPressed: () {
            Navigator.pushNamed(context, 'list');
          },
        ),
        FlatButton(
          child: Text('路由表去生命周期页面'),
          onPressed: () {
            Navigator.pushNamed(context, 'life_cycle');
          },
        ),
        // GetBatterylevel()
      ]),
    );
  }
}
