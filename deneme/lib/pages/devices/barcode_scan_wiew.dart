import 'package:deneme/widgets/padding_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_barcode_scanner/enum.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import 'devices_controller.dart';

class BarcodeScanView extends StatelessWidget {
  const BarcodeScanView({super.key});

  @override
  Widget build(BuildContext context) {
    DevicesControloler controloler = Get.find();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SimpleBarcodeScannerPage(
              scanType:
                  controloler.isBarcode.value != false
                      ? ScanType.barcode
                      : ScanType.qr,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          paddingVertical24(),
        ],
      ),
    );
  }
}
