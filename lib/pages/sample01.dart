import 'package:flutter/material.dart';

class Sample01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Sample")),
        body: Center(
            child: RaisedButton(
          child: Text("Button"),
          onPressed: () {
            Navigator.pop(context);
          },
        )));
  }
}
