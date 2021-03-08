import 'package:flutter/material.dart';
import 'package:flutter0131/pages/practice/practice01.dart';

class PracticeMain extends StatefulWidget {
  @override
  _PracticeMainState createState() => _PracticeMainState();
}

class _PracticeMainState extends State<PracticeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
      ),
      body: Container(
        child: Column(
          children: [
            RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Practice01()));
                }, child: Text("Practice01"))
          ],
        ),
      ),
    );
  }
}