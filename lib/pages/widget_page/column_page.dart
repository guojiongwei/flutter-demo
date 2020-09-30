/*
 * @Author: your name
 * @Date: 2020-09-30 10:13:08
 * @LastEditTime: 2020-09-30 10:48:05
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\pages\widget_page\row_page.dart
 */
import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Column组件',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Text('row组件1', style: TextStyle(color: Colors.white)),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text('row组件2', style: TextStyle(color: Colors.white)),
          ),
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text('row组件3', style: TextStyle(color: Colors.white)),
          ),
          Container(
            width: 100,
            alignment: Alignment.center,
            height: 100,
            color: Colors.orange,
            child: Text('row组件4', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
