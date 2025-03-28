import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/configuration.dart';

Widget customIcon(IconData? icon, {double? iconSize, Function? onTap}) {
  return InkWell(
    onTap: () => onTap!(),
    child: Container(
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 2, 88, 185).withValues(alpha: 0.8),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon ?? CupertinoIcons.number_square_fill,
        color: white,
        size: iconSize ?? 18,
      ),
    ),
  );
}
