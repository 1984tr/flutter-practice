import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter0131/components/app_bar_middle.dart';
import 'package:flutter0131/components/app_bar_top.dart';

class TabPage01 extends StatefulWidget {
  @override
  _TabPage01State createState() => _TabPage01State();
}

class _TabPage01State extends State<TabPage01> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                leading: Container(),
                expandedHeight: 80,
                flexibleSpace: Container(
                  child: Column(children: [
                  AppBarTop(), AppBarMiddle()
                ])
                )),
            ];
          },
          body: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.blue),
              Container(color: Colors.green),
              Container(color: Colors.yellow),
              Container(color: Colors.orange),
              Container(color: Colors.blue),
              Container(color: Colors.red),
            ],
          ),));
  }
}
