/*
 * @Author: 郭炯韦
 * @Date: 2020-09-08 08:47:26
 * @LastEditTime: 2020-09-29 15:48:18
 * @LastEditors:  郭炯韦
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\pages\user.dart
 */
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

Dio dio = Dio();

class User extends StatefulWidget {
  @override
  _User createState() => _User();
}

class _User extends State<User> {
  String data = 'asdad';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            '我的',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true),
      body: Column(children: <Widget>[
        Text('我的页面'),
        FlatButton(
            child: Text('点击$data'),
            onPressed: () async {
              // print('object');
              Response response;
              response = await dio.get(
                  "https://read.xiaoshuo1-sm.com/novel/i.php?do=is_caterank&sort=updateTime&page=1&size=10&firstCate=%E9%83%BD%E5%B8%82%E5%B0%8F%E8%AF%B4&platform=3&userId=8000000&filterMigu=1&timestamp=1599233256&imei=&sn=&tk=&p=3");
              print(response.data.toString());
              setState(() {
                data = '1231212';
              });
            }),
        Image.asset('images/type_channelgroup.png'),
        Image.network(
            'https://img30.360buyimg.com/da/jfs/t1/126282/35/11546/141554/5f4d1dbdE69b5ac65/d11683c54d87ea6c.jpeg')
      ]),
    );
  }
}
