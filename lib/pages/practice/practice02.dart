import 'package:flutter/material.dart';
import 'package:flutter0131/pages/utils/ui_utils.dart' as ui;

class Practice02 extends StatefulWidget {
  @override
  _Practice02State createState() => _Practice02State();
}

class _Practice02State extends State<Practice02> {
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
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.green,
              child: Text("Test$index"),
            );
          },
        ));
  }
}
