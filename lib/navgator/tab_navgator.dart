import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/kind.dart';
import 'package:myapp/pages/cart.dart';
import 'package:myapp/pages/user.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {

  int _currentIndex = 0;
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
    final PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
        Home(),
        Kind(),
        Cart(),
        User(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomItem('首页', Icons.home, 0),
            _bottomItem('分类', Icons.search, 1),
            _bottomItem('购物车', Icons.camera_alt, 2),
            _bottomItem('我的', Icons.account_circle, 3),
          ]),
    );
  }
  _bottomItem(String title, IconData icon, int index){
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: _currentIndex == index ? _activeColor : _defaultColor
      ),
      title: Text(title, style: TextStyle(
        color: _currentIndex == index ? _activeColor : _defaultColor
      ) )
    );
  }
}