import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabPage02 extends StatefulWidget {
  @override
  _TabPage02State createState() => _TabPage02State();
}

class _TabPage02State extends State<TabPage02> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: RaisedButton(
        child: Text("Show Snackbar"),
        onPressed: () {
          // 스낵바 출력 시도 - 정상 출력
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text("SnackBarTest2")));
        },
      ),)
    );
  }
}