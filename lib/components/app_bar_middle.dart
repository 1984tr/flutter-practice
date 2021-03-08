import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter0131/components/popup/search_popup.dart';
import 'package:flutter0131/pages/practice/practice_main.dart';

class AppBarMiddle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 40,
        color: Colors.red,
        child: Row(
          children: [
            RaisedButton(
                onPressed: () {
                  var popup = SearchPopup(context);
                  popup.open();
                },
                child: Text("페이지2")),
            RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PracticeMain()));
                },
                child: Text("Practice"))
          ],
        ));
  }
}
