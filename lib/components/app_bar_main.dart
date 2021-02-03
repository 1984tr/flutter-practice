import 'package:flutter/widgets.dart';
import 'package:flutter0131/components/app_bar_bottom.dart';
import 'package:flutter0131/components/app_bar_middle.dart';
import 'package:flutter0131/components/app_bar_top.dart';

class AppBarMain extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        AppBarTop(),
        AppBarMiddle(),
        AppBarBottom()
      ],),    
    );
  }
}