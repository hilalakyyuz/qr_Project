import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/configuration.dart';

Widget devicesTable() {
  return ListView.separated(
    padding: EdgeInsets.zero,
    itemCount: 4,
    itemBuilder: (context, index) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Cihaz İsmi', style: greyBodyMedium),
          Text(
            'Ahu-1',
            style: Get.textTheme.bodyLarge,
          )
        ],
      );
    },
    separatorBuilder: (context, index) {
      return const Padding(padding: EdgeInsets.symmetric(vertical: 16.0));
    },
  );
}
