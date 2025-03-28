import 'package:flutter/material.dart';

import '../utils/configuration.dart';

Widget formExpansionTile({String? name, List<Widget>? widget}) {
  return ExpansionTile(
      shape: const Border(bottom: BorderSide(width: 1, color: lightGrey)),
      collapsedTextColor: black,
      textColor: black,
      collapsedShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6.0))),
      collapsedBackgroundColor: lightGrey, // açılmadığında gözüken renk.
      title: Text(
        name ?? '',
      ),
      children: widget ?? []);
}
