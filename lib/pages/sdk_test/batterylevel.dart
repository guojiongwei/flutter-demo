import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GetBatterylevel extends StatefulWidget {

  @override
  _GetBatterylevel createState() => _GetBatterylevel();
}

class _GetBatterylevel extends State<GetBatterylevel> {
  
  static const platform = const MethodChannel('samples.flutter.dev/battery');
  String _batteryLevel = 'Unknown battery level.';

  Future<Null> _getBatteryLevel() async {
    String batteryLevel;

    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = '$result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
    setState(() {
      _batteryLevel = batteryLevel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              child: Text('调用ios原生方法获取电池电量'),
              onPressed: _getBatteryLevel,
            ),
            Text('电量为$_batteryLevel'),
          ],
        ),
      ),
    );
  }
}
