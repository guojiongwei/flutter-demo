/*
 * @Author: 郭炯韦
 * @Date: 2020-09-08 08:47:26
 * @LastEditTime: 2020-09-29 17:48:30
 * @LastEditors: Please set LastEditors
 * @Description: 首页
 * @FilePath: \flutter-demo\lib\pages\home.dart
 */
import 'package:flutter/material.dart';
import 'package:myapp/pages/widget_page/text_page.dart';
// import 'package:myapp/pages/sdk_test/batterylevel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '首页',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
        brightness: Brightness.light,
      ),
      body: Column(children: <Widget>[
        FlatButton(
          child: Text('text组件'),
          onPressed: () {
            Navigator.pushNamed(context, 'text_page');
          },
        ),
        FlatButton(
          child: Text('push去Text组件页面'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TextPage();
            }));
          },
        ),
        FlatButton(
          child: Text('button组件'),
          onPressed: () {
            Navigator.pushNamed(context, 'button_page');
          },
        ),
        FlatButton(
          child: Text('图片image组件'),
          onPressed: () {
            Navigator.pushNamed(context, 'image_page');
          },
        ),
        FlatButton(
          child: Text('表单组件'),
          onPressed: () {
            Navigator.pushNamed(context, 'form_page');
          },
        ),
        FlatButton(
          child: Text('进度条组件'),
          onPressed: () {
            Navigator.pushNamed(context, 'progress_page');
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
