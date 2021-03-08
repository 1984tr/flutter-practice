import 'dart:async';

import 'package:flutter/widgets.dart';

class TabPage03 extends StatefulWidget {
  @override
  _TabPage03State createState() => _TabPage03State();
}

class _TabPage03State extends State<TabPage03> {
  var _counter = 0;
  var _stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  @override
  void initState() {
    super.initState();

    Stream.fromIterable([1, 2, 3, 4, 5]).listen((v) => _handleStream(v));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: _stream,
        builder: (context, snapShopt) {
          return ListView();
        },
      ),
    );
  }

  _handleStream(int value) {
    setState(() {
      _counter = value;
    });
  }
}
