import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.name,
    @required this.toParent
  }):super(key: key);
    final String name;
    final Function toParent;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(
          child: Text(name),
          onPressed: (){
            // Scaffold scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
            toParent('1111');
          },
        )
      ],
    );
  }
}