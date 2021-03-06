/*
 * @Author: 郭炯韦
 * @Date: 2020-09-08 08:47:26
 * @LastEditTime: 2020-09-30 15:12:23
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\main.dart
 */
import 'package:flutter/material.dart';
import 'package:myapp/navgator/tab_navgator.dart';
import 'package:myapp/pages/widget_page/life_cycle_page.dart';
import 'package:myapp/pages/widget_page/text_page.dart';
import 'package:myapp/pages/widget_page/button_page.dart';
import 'package:myapp/pages/widget_page/image_page.dart';
import 'package:myapp/pages/widget_page/form_page.dart';
import 'package:myapp/pages/widget_page/progress_page.dart';
import 'package:myapp/pages/widget_page/row_page.dart';
import 'package:myapp/pages/widget_page/column_page.dart';
import 'package:myapp/pages/widget_page/stack_page.dart';
import 'package:myapp/pages/widget_page/transform_page.dart';
import 'package:myapp/pages/widget_page/container_page.dart';
import 'package:myapp/pages/widget_page/scaffold_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '郭炯韦',
      theme: ThemeData(primaryColor: Color.fromARGB(255, 36, 178, 155)),
      home: TabNavigator(),
      routes: {
        'life_cycle': (context) => LifeCycle(),
        'text_page': (context) => TextPage(),
        'button_page': (context) => ButtonPage(),
        'image_page': (context) => ImagePage(),
        'form_page': (context) => FromPage(),
        'progress_page': (context) => ProgressPage(),
        'row_page': (context) => RowPage(),
        'column_page': (context) => ColumnPage(),
        'stack_page': (context) => StackPage(),
        'transform_page': (context) => TransformPage(),
        'container_page': (context) => ContainerPage(),
        'scaffold_page': (context) => ScaffoldPage()
      },
    );
  }
}
