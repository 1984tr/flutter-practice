import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TabPage02 extends StatefulWidget {
  @override
  _TabPage02State createState() => _TabPage02State();
}

class _TabPage02State extends State<TabPage02> {
  var test = "";

  @override
  void initState() {
    super.initState();
    _loadText();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: [
          RaisedButton(
            child: Text("Show Snackbar"),
            onPressed: () {
              // 스낵바 출력 시도 - 정상 출력
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("SnackBarTest2")));
            },
          ),
          RaisedButton(
            child: Text(test),
            onPressed: () {
              _updateText();
            },
          )
        ],
      ),
    ));
  }

  _loadText() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var text = (prefs.getString('test') ?? "unknown");
    setState(() {
      test = text;
    });
  }

  _updateText() async {
    var prefs = await SharedPreferences.getInstance();
    var updated = "Text ${DateTime.now()}";
    await prefs.setString('test', updated);
    setState(() {
      test = updated;
    });
  }
}
