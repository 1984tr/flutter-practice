import 'package:flutter/material.dart';
import 'package:flutter0131/pages/utils/ui_utils.dart' as ui;

class Practice02 extends StatefulWidget {
  @override
  _Practice02State createState() => _Practice02State();
}

class _Practice02State extends State<Practice02> {
  var _color = Colors.green;
  var _text = "Tap Me";
  var _check = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(ui.appBarHeight(context)),
            child: Container(color: Colors.amber)),
        body: Container(
            child: Column(children: [
          GestureDetector(
              onTap: () {
                setState(() {
                  _color = Colors.lightGreen;
                });
              },
              onDoubleTap: () {
                setState(() {
                  _color = Colors.deepOrange;
                });
              },
              onVerticalDragUpdate: (DragUpdateDetails v) =>
                  _handleDragEnd(v, context),
              child: Container(
                  width: double.infinity,
                  height: 100,
                  color: _color,
                  child: Text(_text))),
          Dismissible(
              onDismissed: (DismissDirection dir) => _handleDismiss(dir),
              confirmDismiss: (DismissDirection dir) async =>
                  dir == DismissDirection.endToStart,
              background: Container(
                child: Icon(Icons.delete_forever),
                decoration: BoxDecoration(color: Colors.red[700]),
              ),
              key: ValueKey("test1"),
              child: CheckboxListTile(
                value: _check,
                title: Text("Title$_check"),
                onChanged: (b) => _handleCheckbox(b),
              ))
        ])));
  }

  void _handleDragEnd(DragUpdateDetails d, BuildContext context) {
    double globalPosition = d.globalPosition.dy;
    double localPosition = d.localPosition.dy;
    setState(() {
      _text = "globalPosition: $globalPosition\nlocalPosition: $localPosition";
    });
  }

  void _handleDismiss(DismissDirection dir) {
    print(dir);
  }

  void _handleCheckbox(bool b) {
    setState(() {
      _check = b;
    });
  }
}
