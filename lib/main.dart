import 'package:flutter/material.dart';
import 'package:myapp/navgator/tab_navgator.dart';
import 'package:myapp/pages/list.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: '郭炯韦',
      theme: ThemeData(
        primaryColor: Colors.yellow
      ),
      home:TabNavigator(),
      routes: {
        'list': (context) => List()
      },
    );
  }
}