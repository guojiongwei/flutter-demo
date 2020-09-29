/*
 * @Author: 郭炯韦
 * @Date: 2020-09-08 08:47:26
 * @LastEditTime: 2020-09-29 10:48:16
 * @LastEditors: your name
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\components\header.dart
 */
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header(
      {Key key,
      @required this.title,
      this.titleColor = Colors.white,
      this.centerTitle = true,
      this.backgroundColor})
      : super(key: key);
  final String title;
  final Color titleColor;
  final bool centerTitle;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: titleColor)),
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
    );
  }
}
