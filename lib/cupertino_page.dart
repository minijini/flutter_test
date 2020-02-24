import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatefulWidget {
  _CupertinoPState createState() => _CupertinoPState();
}

class _CupertinoPState extends State<CupertinoPage> {
  bool _switch = true;
  bool _switch2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('쿠퍼티노 UI'),
      ),
      body: Column(
        children: <Widget>[
          CupertinoButton( //ios
            child: Text('쿠퍼티노 버튼'),
          ),
          CupertinoSwitch( //ios
            value: _switch,
            onChanged: (bool value) {
              setState(() {
                _switch = value;
              });
            }, //처리하는곳
          ),
          RaisedButton( //android
            child: Text('머티리얼 버튼'),
          ),
          Switch(
            value: _switch2,
            onChanged: (bool value){
              setState(() {
                _switch2 = value;
              });
            },
          )
        ],
      ),
    );
  }
}
