import 'package:flutter/material.dart';

class BottomSheet {
  BottomSheet(this.context, this.widgets);
  final BuildContext context;
  final List<Widget> widgets;

  void open() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        context: context,
        builder: (BuildContext bc) {
          return Container(
              child: Wrap(
            direction: Axis.vertical,
            children: widgets,
          ));
        });
  }
}
