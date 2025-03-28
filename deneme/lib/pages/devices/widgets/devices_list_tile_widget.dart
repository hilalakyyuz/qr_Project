import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_icon_widget.dart';

Widget devicesListTile({
  required String title,
  IconData? icon,
  Function? onTap,
}) {
  return ListTile(
    onTap: () => onTap!(),
    contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
    leading: customIcon(icon),
    title: Text(
      title.toUpperCase(),
      style: Get.textTheme.bodyLarge,
    ),
    trailing: const Icon(CupertinoIcons.right_chevron),
  );
}
