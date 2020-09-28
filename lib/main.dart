import 'package:flutter/material.dart';
import 'package:myapp/navgator/tab_navgator.dart';
import 'package:myapp/pages/list_page.dart';
import 'package:myapp/pages/life_cycle_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '郭炯韦',
      theme: ThemeData(primaryColor: Color.fromARGB(255, 36, 178, 155)),
      home: TabNavigator(),
      routes: {
        'list': (context) => List(),
        'life_cycle': (context) => LifeCycle(),
      },
    );
  }
}
