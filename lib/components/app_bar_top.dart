import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        color: Colors.purple,
        child: Row(
          children: [
            Text("Top App Bar"),
            Spacer(flex: 1,),
            RaisedButton(
              onPressed: () {},
              child: Text("페이지1"),
            )
          ],
        ));
  }
}
