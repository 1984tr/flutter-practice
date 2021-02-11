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
            Spacer(
              flex: 1,
            ),
            RaisedButton(
              onPressed: () {
                FlutterDialog(context);
              },
              child: Text("페이지1"),
            )
          ],
        ));
  }

  void FlutterDialog(BuildContext context) {
    showDialog(
        context: context,
        //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            title: Column(
              children: <Widget>[
                new Text("Dialog Title"),
              ],
            ),
            //
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Dialog Content",
                ),
              ],
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text("확인"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
