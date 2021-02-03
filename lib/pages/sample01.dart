import 'package:flutter/material.dart';
import 'package:flutter0131/components/app_bar_main.dart';
import 'package:flutter0131/components/app_bar_middle.dart';
import 'package:flutter0131/components/app_bar_top.dart';

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
                expandedHeight: 80,
                pinned: true,
                flexibleSpace: Container(
                  child: Column(children: [
                  AppBarTop(), AppBarMiddle()
                ])
                )),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.black26,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.account_box),
                        text: "Detail",
                      ),
                      Tab(icon: Icon(Icons.add_location), text: "Address"),
                      Tab(icon: Icon(Icons.monetization_on), text: "Earning"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              Text("1"),Text("2"),Text("3")
            ],
          )))
    ));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
    final TabBar _tabBar;

    _SliverAppBarDelegate(this._tabBar);

    @override
    double get minExtent => _tabBar.preferredSize.height;

    @override
    double get maxExtent => _tabBar.preferredSize.height;

    @override
    Widget build(
        BuildContext context, double shrinkOffset, bool overlapsContent) {
      return new Container(
        child: _tabBar,
      );
    }

    @override
    bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
      return false;
    }
  }
