/*
 * @Author: 郭炯韦
 * @Date: 2020-09-29 15:02:23
 * @LastEditTime: 2020-09-29 15:44:16
 * @LastEditors:  郭炯韦
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\pages\widget_page\image_page.dart
 */
import 'package:flutter/material.dart';
import 'package:myapp/components/my_icon.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '图片和Icon',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Text('本地图片'),
          Image.asset(
            "images/type_channelgroup.png",
            width: 100.0,
          ),
          Image(
              image: AssetImage("images/type_channelgroup.png"), width: 100.0),
          Text('网络图片'),
          Image(
            image: NetworkImage(
                'https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1906469856,4113625838&fm=26&gp=0.jpg'),
            width: 100,
          ),
          Image.network(
            'https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1906469856,4113625838&fm=26&gp=0.jpg',
            width: 100,
          ),
          Text('flutter图标'),
          Icon(
            Icons.accessible,
            color: Colors.green,
          ),
          Icon(
            Icons.error,
            color: Colors.green,
          ),
          Icon(
            Icons.fingerprint,
            color: Colors.green,
          ),
          Text('自定义图标'),
          Icon(
            MyIcon.book,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
