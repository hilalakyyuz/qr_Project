import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/configuration.dart';
import '../../../widgets/custom_icon_widget.dart';
import '../../../widgets/padding_widgets.dart';
import '../devices_controller.dart';

Widget header(DevicesControloler controller) {
  return Container(
    color: grey,
    width: Get.width,
    padding: const EdgeInsets.all(22.0),
    child: Column(
      children: [
        Obx(
          () => Container(
            width: 200,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customDarkButton(
                  name: 'BARCODE',
                  onTap: () {
                    controller.isBarcode.value = !controller.isBarcode.value;
                  },
                ),
                customWhiteButton(
                  name: 'QR',
                  onTap: () {
                    controller.isBarcode.value = !controller.isBarcode.value;
                  },
                ),
              ],
            ),
          ),
        ),
        paddingVertical16(),
        Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: white,
                shape: BoxShape.circle,
              ),
              child: Obx(
                () =>
                    controller.isBarcode.value == true
                        ? IconButton(
                          onPressed: () {
                            controller.barcodeScan();
                          },
                          icon: const Icon(
                            CupertinoIcons.barcode_viewfinder,
                            size: 50,
                          ),
                        )
                        : IconButton(
                          onPressed: () {
                            controller.barcodeScan();
                          },
                          icon: const Icon(CupertinoIcons.qrcode, size: 50),
                        ),
              ),
            ),
            Positioned(
              bottom: 2,
              right: 8,
              child: customIcon(CupertinoIcons.camera, iconSize: 16),
            ),
          ],
        ),
        paddingVertical8(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () =>
                  controller.isBarcode.value == true
                      ? Text('BARCODE : ', style: bodyMedium)
                      : Text('QR CODE : ', style: bodyMedium),
            ),
            Text('02730830', style: titleMedium),
          ],
        ),
      ],
    ),
  );
}

Widget customDarkButton({String? name, Function? onTap}) {
  DevicesControloler controloler = Get.find();
  return InkWell(
    onTap: () => onTap!(),
    child: Container(
      width: 90,
      decoration: BoxDecoration(
        color:
            controloler.isBarcode.value == true
                ? const Color.fromARGB(255, 2, 88, 185).withValues(alpha: 0.8)
                : white,
        borderRadius: BorderRadius.circular(6.0),
      ),
      padding: const EdgeInsets.all(6.0),
      child: Center(
        child: Text(
          name ?? '',
          style:
              controloler.isBarcode.value == false
                  ? bodyMedium
                  : whiteBodyMedium,
        ),
      ),
    ),
  );
}

Widget customWhiteButton({String? name, Function? onTap}) {
  DevicesControloler controloler = Get.find();
  return InkWell(
    onTap: () => onTap!(),
    child: Container(
      width: 90,
      decoration: BoxDecoration(
        color:
            controloler.isBarcode.value == false
                ? const Color.fromARGB(255, 2, 88, 185).withValues(alpha: 0.8)
                : white,
        borderRadius: BorderRadius.circular(6.0),
      ),
      padding: const EdgeInsets.all(6.0),
      child: Center(
        child: Text(
          name ?? '',
          style:
              controloler.isBarcode.value == false
                  ? whiteBodyMedium
                  : bodyMedium,
        ),
      ),
    ),
  );
}
