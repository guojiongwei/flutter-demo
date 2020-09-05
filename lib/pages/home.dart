import 'package:flutter/material.dart';
import 'package:myapp/pages/list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页')),
      body: Column(children: <Widget>[
        Text('首页页面'),
        FlatButton(
          child: Text('push去列表页面'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return List();
            }));
          },
        ),

        FlatButton(
          child: Text('路由表去列表页面'),
          onPressed: (){
            Navigator.pushNamed(context, 'list');
          },
        )
      ]),
    );
  }
}