import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {

  const LifeCycle({
    Key key,
    this.initValue: 0
  });
  final int initValue;

  @override
  _LifeCycle createState() => _LifeCycle();
}

class _LifeCycle extends State<LifeCycle> {

  int _counter;

  @override
  void initState() {
    super.initState();
    _counter=widget.initValue + 22;
    print("initState--$_counter");
  }
  
  @override
  void didUpdateWidget(LifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }
  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text('生命周期'),
      ),
      body: Column(
        children: <Widget>[
          Text('生命周期$_counter'),
          FlatButton(
            child: Column(
              children: <Widget>[
                Text('点击事件')
              ],
            ),
            onPressed: (){
              setState(() {
                _counter = 11111;
              });
            },
          )
        ],
      ),
    );
  }
}