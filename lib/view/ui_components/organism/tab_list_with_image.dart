



import 'package:flight_book_app/view/ui_components/molecules/image_card.dart';
import 'package:flight_book_app/view/ui_components/molecules/tab_titles.dart';
import 'package:flutter/material.dart';

class TabListWithImage extends StatefulWidget {
  const TabListWithImage(
      {super.key,
      required this.imageSrc,
      required this.tabData,
      required this.title});

  final String imageSrc;
  final String title;
  final List<TabData> tabData;

  @override
  State<TabListWithImage> createState() => _TabListWithImageState();
}

class _TabListWithImageState extends State<TabListWithImage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          ImageCard(
            imageSrc: widget.imageSrc,
            title: widget.title,
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: TabTilteList(
                tabTitles: List.generate(
                    widget.tabData.length, (i) => widget.tabData[i].title),
                tabController: _tabController,
              )),
        ],
      ),
      Expanded(
        child: TabBarView(
          controller: _tabController,
          children: List.generate(
              widget.tabData.length, (i) => widget.tabData[i].widget),
        ),
      )
    ]);
  }
}

class TabData {
  TabData({required this.title, required this.widget});

  final String title;
  final Widget widget;
}
