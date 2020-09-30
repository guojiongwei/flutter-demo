/*
 * @Author: your name
 * @Date: 2020-09-30 11:13:26
 * @LastEditTime: 2020-09-30 11:44:09
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\pages\widget_page\stack_page.dart
 */
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack组件', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
                child: Align(
                  widthFactor: 1,
                  heightFactor: 1,
                  // alignment: Alignment(0, 0.0),
                  alignment: FractionalOffset(0, -0.1),
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
              Positioned(
                left: 108.0,
                child: Text("I am Jack"),
              ),
              Positioned(
                top: 208.0,
                child: Text("Your friend"),
              )
            ],
          ),
        ));
  }
}
