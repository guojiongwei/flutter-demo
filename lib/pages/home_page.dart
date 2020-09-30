/*
 * @Author: 郭炯韦
 * @Date: 2020-09-08 08:47:26
 * @LastEditTime: 2020-09-30 17:29:46
 * @LastEditors: Please set LastEditors
 * @Description: 首页
 * @FilePath: \flutter-demo\lib\pages\home.dart
 */
import 'package:flutter/material.dart';

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
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, //横轴三个子widget
              childAspectRatio: 1.0, //宽高比为1时，子widget
              crossAxisSpacing: 10.0, // 子Widget左右间距
              mainAxisSpacing: 10.0), // 子Widget上下间距
          padding: EdgeInsets.all(20),
          children: <Widget>[
            FlatButton(
              color: Colors.yellow,
              child: Text('text组件', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'text_page');
              },
            ),
            FlatButton(
              color: Colors.pink,
              child: Text('button组件', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'button_page');
              },
            ),
            FlatButton(
              color: Color.fromARGB(255, 255, 105, 180),
              child: Text('图片image组件', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'image_page');
              },
            ),
            FlatButton(
              color: Color.fromARGB(255, 219, 112, 147),
              child: Text('表单组件', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'form_page');
              },
            ),
            FlatButton(
              color: Color.fromARGB(255, 199, 21, 133),
              child: Text('进度条组件', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'progress_page');
              },
            ),
            FlatButton(
              color: Color.fromARGB(255, 220, 20, 60),
              child: Text('Row组件', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'row_page');
              },
            ),
            FlatButton(
              color: Color.fromARGB(255, 255, 192, 203),
              child: Text('Column组件', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'column_page');
              },
            ),
            FlatButton(
              color: Color.fromARGB(255, 255, 0, 255),
              child: Text('Stack组件', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'stack_page');
              },
            ),
            FlatButton(
              color: Color.fromARGB(255, 127, 255, 170),
              child: Text('transform组件', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'transform_page');
              },
            ),
            FlatButton(
              color: Color.fromARGB(255, 255, 0, 255),
              child: Text('container组件', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'container_page');
              },
            ),
            FlatButton(
              color: Color.fromARGB(255, 255, 0, 255),
              child: Text('scaffold组件', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'scaffold_page');
              },
            ),
            FlatButton(
              color: Color.fromARGB(255, 20, 255, 255),
              child: Text('路由表去生命周期页面', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, 'life_cycle');
              },
            ),
            // GetBatterylevel()
          ]),
    );
  }
}
