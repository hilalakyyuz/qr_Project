import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/padding_widgets.dart';

Widget formGroupCard({String? text, List<Widget>? widget}) {
  return SizedBox(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        formGroupTitle(text),
        paddingVertical8(),
        Column(children: widget ?? []),
        paddingVertical8(),
        const Divider(),
      ],
    ),
  );
}

Widget formGroupTitle(String? text) {
  return SizedBox(
    child: Text(text?.toUpperCase() ?? '', style: Get.textTheme.titleMedium),
  );
}
