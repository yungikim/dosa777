import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatefulWidget {
  const CupertinoPage({Key? key}) : super(key: key);

  @override
  State<CupertinoPage> createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  bool _switch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text("쿠퍼티노"),
      ),
      body: Column(
        children: [
          CupertinoButton(
              child: Text("쿠퍼티노 버튼"), onPressed: () => print("1111")),
          CupertinoSwitch(value: _switch, onChanged: (bool value){
              setState((){
                _switch = value;
              });
          }),
          Switch(value: _switch, onChanged: (bool value){
            setState((){
              _switch = value;
            });
          })
        ],
      ),
    );
  }
}
