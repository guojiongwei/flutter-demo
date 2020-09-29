/*
 * @Author: 郭炯韦
 * @Date: 2020-09-29 09:47:14
 * @LastEditTime: 2020-09-29 10:35:02
 * @LastEditors:  郭炯韦
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\pages\widget_page\text_page.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //修改颜色
        ),
        centerTitle: true,
        title: Text(
          '我是text页面的头部标题',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Text(
            "1.textAlign: 居中显示" * 8, //字符串重复六次
            textAlign: TextAlign.center,
          ),
          Text(
            "2.maxLines最多一行显示省略号 " * 16, //字符串重复六次
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '3.textScaleFactor: 2,放大字体',
            textScaleFactor: 2,
          ),
          Text(
            'TextStyle设置颜色，字体，粗细，背景',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                backgroundColor: Colors.yellow,
                height: 1,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: '哈哈'),
            TextSpan(text: '嘿嘿', style: TextStyle(color: Colors.yellow))
          ])),
          DefaultTextStyle(
            style: TextStyle(color: Colors.yellow, fontSize: 20),
            child: Column(
              children: [
                Text('继承样式1'),
                Text('继承样式2'),
                Text('不继承样式',
                    style: TextStyle(inherit: false, color: Colors.black)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
