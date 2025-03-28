import 'package:flutter/material.dart';
import 'package:get/get.dart';

const white = Colors.white;
const black = Colors.black;
var grey = Colors.grey.withValues(alpha: 0.2);
const opexQBlue = Color.fromRGBO(83, 166, 220, 1);
const lightGrey = Color.fromARGB(255, 234, 232, 232);
const darkGreen = Color.fromRGBO(55, 73, 62, 1);

// typografy :

var titleLarge = Get.textTheme.titleLarge!.copyWith();
var titleMedium = Get.textTheme.titleMedium!.copyWith();
var titleSmall = Get.textTheme.titleSmall!.copyWith();
var bodyLarge = Get.textTheme.bodyLarge!.copyWith();
var bodyMedium = Get.textTheme.bodyMedium!.copyWith();
var bodySmall = Get.textTheme.bodySmall!.copyWith();

var greyBodyMedium = Get.textTheme.bodyLarge!.copyWith(color: Colors.grey);
var whiteBodyMedium = Get.textTheme.bodyMedium!.copyWith(color: white);
