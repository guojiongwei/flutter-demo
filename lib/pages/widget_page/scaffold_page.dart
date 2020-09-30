/*
 * @Author: your name
 * @Date: 2020-09-30 15:07:54
 * @LastEditTime: 2020-09-30 17:27:59
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\pages\widget_page\scaffold_page.dart
 */
import 'package:flutter/material.dart';
import 'package:myapp/components/my_drawer.dart';

class ScaffoldPage extends StatefulWidget {
  @override
  _ScaffoldPage createState() => _ScaffoldPage();
}

class _ScaffoldPage extends State<ScaffoldPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController; //需要定义一个Controller
  List tabs = ['新闻', '历史', '图片'];
  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Scaffold组件', style: TextStyle(color: Colors.white)),
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.dashboard, color: Colors.white),
                onPressed: () {
                  print(11);
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                print(111);
                Navigator.pop(context);
              },
            )
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            controller: _tabController,
            onTap: (value) {
              print('111$value');
            },
            tabs: tabs.map((e) => Tab(text: e)).toList(),
          ),
        ),
        drawer: MyDrawer(),
        body: TabBarView(
          controller: _tabController,
          children: tabs.map((e) {
            //创建3个Tab页
            return Container(
              alignment: Alignment.center,
              child: Text(e, textScaleFactor: 5),
            );
          }).toList(),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,

          shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              SizedBox(), //中间位置空出
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.home),
              ),
              IconButton(icon: Icon(Icons.business), onPressed: () {}),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
          ),
        ));
  }
}
