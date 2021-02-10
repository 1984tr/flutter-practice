import 'package:flutter/widgets.dart';
import 'package:flutter0131/components/popup/bottom_sheet.dart';

class SearchPopup {
  SearchPopup(this.context);
  final BuildContext context;

  void open() {
    var sheet = BottomSheet(
        context,
        [
          Text("test1"),
          Text("test2"),
          Text("test3"),
          Text("test4"),
        ]);
    sheet.open();
  }
}
