import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../utils/app_routes.dart';

class DevicesControloler extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tabController;
  RxBool isBarcode = false.obs;
  var scanVlue = ''.obs;
  RxList<Map<String, dynamic>> devices = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
    loadDevices();
  }

  Future<void> loadDevices() async {
    String data = await rootBundle.loadString('assets/devices.json');
    List<dynamic> jsonData = json.decode(data);

    devices.value =
        jsonData.map((item) {
          return {'title': item['title'], 'image': item['image']};
        }).toList();
  }

  Future<void> barcodeScan() async {
    String barcode = await Get.toNamed(AppRoutes.barcode);
    scanVlue.value = barcode;
  }
}
