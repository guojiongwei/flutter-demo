/*
 * @Author: 郭炯韦
 * @Date: 2020-09-29 10:38:16
 * @LastEditTime: 2020-09-29 16:22:39
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\pages\widget_page\button_page.dart
 */
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('button组件', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text('漂浮按钮'),
            onPressed: () {
              print(11111);
            },
          ),
          FlatButton(
            child: Text('扁平按钮'),
            onPressed: () {
              print(111);
            },
          ),
          OutlineButton(
            child: Text('normal按钮'),
            onPressed: () {
              print(111);
            },
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {
              print(111);
            },
          ),
          FlatButton.icon(
            icon: Icon(Icons.thumb_up),
            label: Text('带图标的扁平按钮1'),
            onPressed: () {
              print(111);
            },
          ),
          RaisedButton(
            child: Text('submit'),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              print(111);
            },
          )
        ],
      ),
    );
  }
}
