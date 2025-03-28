import 'package:flutter/material.dart';
import '../utils/configuration.dart';

Widget formButton({String? buttonName, Function? onTap}) {
  return InkWell(
    onTap: () => onTap!(),
    child: Container(
      height: 40,
      decoration: BoxDecoration(
          color: darkGreen, borderRadius: BorderRadius.circular(6.0)),
      child: Center(
          child: Text(
        buttonName ?? '',
        style: whiteBodyMedium,
      )),
    ),
  );
}
