import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter0131/components/app_bar_middle.dart';
import 'package:flutter0131/components/app_bar_top.dart';

class TabPage01 extends StatefulWidget {
  @override
  _TabPage01State createState() => _TabPage01State();
}

class _TabPage01State extends State<TabPage01> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        
        // SliverAppBar(
        //   toolbarHeight: 40,
        //   elevation: 0,
        //   pinned: true,
        //   leading: Container(),
        //   flexibleSpace: Container(
        //     child: Column(children: [
        //     AppBarTop()
        //   ]))
        //   ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 100,
          ),
        )
      ],
    );
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
        color: Colors.amber,
      );
    }

    @override
    bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
      return false;
    }
  }
