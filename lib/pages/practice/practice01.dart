import 'package:flutter/material.dart';

class Practice01 extends StatefulWidget {
  @override
  _Practice01State createState() => _Practice01State();
}

class _Practice01State extends State<Practice01> {
  var _count = 0;

  @override
  void initState() {
    super.initState();
    _count = 100;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Practice01"),
        ),
        body: Container(
            child: Column(children: [
          RaisedButton(
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              child: Text("$_count")),
          CustomButton(
            display: Text("display"),
            onPressed: () => {
              setState(() {
                _count++;
              })
            },
          ),
          Container(
              color: Colors.lightGreen,
              child: Row(children: [Text("Col1"), Text("Col2")])),
          Table(
              children: List.generate(3, (i) {
            return TableRow(
                children: List.generate(5, (j) {
              return Text("$i + $j");
            }));
          }))
        ])));
  }
}

class CustomButton extends StatelessWidget {
  final Widget display;
  final VoidCallback onPressed;

  CustomButton({this.display, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: display, onPressed: onPressed, color: Colors.amber);
  }
}
