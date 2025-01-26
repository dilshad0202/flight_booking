import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_component_size.dart';
import 'package:flight_book_app/utils/styles.dart';
import 'package:flutter/material.dart';

class TabTilteList extends StatelessWidget {
  const TabTilteList(
      {super.key, required this.tabTitles, required this.tabController});

  final List<String> tabTitles;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppComponentSize.tabBarHeight,
      margin: const EdgeInsets.symmetric(
          horizontal: AppComponentSize.tabBarHorPadding),
      decoration: BoxDecoration(
        boxShadow: AppStyle.boxShadow,
        color: AppColors.backgroundSecondary,
        borderRadius: BorderRadius.circular(AppComponentSize.radius),
      ),
      child: TabBar(
          controller: tabController,
          tabs: List.generate(
              tabTitles.length, (i) => Tab(text: tabTitles[i]))),
    );
  }
}
