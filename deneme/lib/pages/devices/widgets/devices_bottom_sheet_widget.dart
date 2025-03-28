import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../utils/configuration.dart';
import '../../../widgets/padding_widgets.dart';
import 'devices_form_content_widget.dart';

Future<dynamic> devicesBottomSheet({int bottomId = 0}) {
  return Get.bottomSheet(
    isScrollControlled: true,
    Container(
      width: Get.width,
      height: MediaQuery.of(Get.context!).size.height / 1.2,
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      child: conditionBottomSheet(bottomId),
    ),
  );
}

conditionBottomSheet(int bottomId) {
  if (bottomId == 0) {
    return deviceInfoSheet();
  } else if (bottomId == 1) {
    return faultSheet();
  } else if (bottomId == 2) {
    return documentSheet();
  } else if (bottomId == 3) {
    return jobSheet();
  } else if (bottomId == 4) {
    return periodicMaintanceSheet();
  } else if (bottomId == 5) {
    return materialSheet();
  }
}

Widget faultSheet() {
  return Column(
    children: [paddingVertical16(), Text('Arızalar', style: titleLarge)],
  );
}

Widget documentSheet() {
  return Column(
    children: [
      paddingVertical16(),
      Text('Belgeler', style: titleLarge),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: 7,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.3,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://ucarecdn.com/5aecfd78-0202-4484-9cef-dd975ad3ce5a/waterpark.png",
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ],
  );
}

Widget jobSheet() {
  return Column(
    children: [paddingVertical16(), Text('İşler', style: titleLarge)],
  );
}

Widget periodicMaintanceSheet() {
  return Column(
    children: [
      paddingVertical16(),
      Text('Periyodik Bakımlar', style: titleLarge),
    ],
  );
}

Widget materialSheet() {
  return Column(
    children: [paddingVertical16(), Text('Malzemeler', style: titleLarge)],
  );
}

Widget deviceInfoSheet() {
  return Column(
    children: [
      paddingVertical16(),
      Text('Cihaz Bilgileri', style: titleLarge),
      Expanded(child: devicesFormContent()),
    ],
  );
}
