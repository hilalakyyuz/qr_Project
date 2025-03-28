import 'package:flutter/material.dart';

import '../utils/configuration.dart';

Widget tabHorizontal(TabController controller, List tabList, {bool? isScrool}) {
  return TabBar(
    automaticIndicatorColorAdjustment: true,
    isScrollable: true,
    tabAlignment: TabAlignment.center,
    labelColor: black,
    unselectedLabelColor: black.withValues(alpha: 0.5),
    indicatorColor: black.withValues(alpha: 0.7),
    indicatorWeight: 3,
    // onTap: onTap != null ? (index) => onTap(index) : null,
    tabs:
        tabList
            .map((e) => SizedBox(child: Tab(text: e.toUpperCase())))
            .toList(),
    controller: controller,
  );
}
