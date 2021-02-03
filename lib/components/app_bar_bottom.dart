import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.green,
      child: TabBar(tabs: [
        Tab(text: "Home"),
                    Tab(text: "Best"),
                    Tab(text: "New")
      ],),
    );
  }
}