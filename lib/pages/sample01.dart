import 'package:flutter/material.dart';
import 'package:flutter0131/components/app_bar_main.dart';
import 'package:flutter0131/components/app_bar_middle.dart';
import 'package:flutter0131/components/app_bar_top.dart';
import 'package:flutter0131/pages/tab_page01.dart';

class Sample01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                leading: Container(),
                expandedHeight: 80,
                flexibleSpace: Container(
                  child: Column(children: [
                  AppBarTop(), AppBarMiddle()
                ])
                )),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              TabPage01(),Text("2"),Text("3")
            ],
          )))
    ));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {

    @override
    double get minExtent => 40;

    @override
    double get maxExtent => 40;

    @override
    Widget build(
        BuildContext context, double shrinkOffset, bool overlapsContent) {
      return new Container(
        height: 40,
        color: Colors.white,
        child: TabBar(
          labelColor: Colors.black87,
          unselectedLabelColor: Colors.black26,
          tabs: [
            Tab(text: "Detail"),
            Tab(text: "Address"),
            Tab(text: "Earning"),
          ],
        ),
      );
    }

    @override
    bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
      return false;
    }
  }
