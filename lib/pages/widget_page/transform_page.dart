/*
 * @Author: your name
 * @Date: 2020-09-30 11:13:26
 * @LastEditTime: 2020-09-30 11:51:17
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\pages\widget_page\transform_page.dart
 */
import 'package:flutter/material.dart';

class TransformPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TransformPage组件', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Container(
          color: Colors.black,
          padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: new Transform(
            alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
            transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
            child: new Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.deepOrange,
              child: const Text('Apartment for rent!'),
            ),
          ),
        ));
  }
}
