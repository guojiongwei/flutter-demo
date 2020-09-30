/*
 * @Author: your name
 * @Date: 2020-09-30 11:56:09
 * @LastEditTime: 2020-09-30 15:16:12
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\pages\widget_page\container_page.dart
 */
import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('data', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Container(
          margin: EdgeInsets.only(), //容器外填充
          constraints:
              BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
          decoration: BoxDecoration(
              //背景装饰
              gradient: RadialGradient(
                  //背景径向渐变
                  colors: [Colors.red, Colors.orange],
                  center: Alignment.topLeft,
                  radius: .98),
              boxShadow: [
                //卡片阴影
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0)
              ],
              border: Border(
                  top: BorderSide(
                      color: Colors.yellow,
                      width: 1,
                      style: BorderStyle.solid))),
          transform: Matrix4.rotationZ(-.2), //卡片倾斜变换
          alignment: Alignment.center, //卡片内文字居中
          child: Text(
            //卡片文字
            "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ));
  }
}
