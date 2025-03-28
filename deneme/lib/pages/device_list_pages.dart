// import 'dart:convert' show json;

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'devices/widgets/device_image_widget.dart';

// class DeviceListScreenView extends StatefulWidget {
//   const DeviceListScreenView({super.key});

//   @override
//   DeviceListScreenState createState() => DeviceListScreenState();
// }

// class DeviceListScreenState extends State<DeviceListScreenView> {
//   List<Map<String, dynamic>> devices = [];

//   @override
//   void initState() {
//     super.initState();
//     loadDevices();
//   }

//   Future<void> loadDevices() async {
//     String data = await rootBundle.loadString('assets/devices.json');
//     List<dynamic> jsonData = json.decode(data);

//     setState(() {
//       devices =
//           jsonData.map((item) {
//             return {'title': item['title'], 'image': item['image']};
//           }).toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             SizedBox(height: 50),
//             Text(
//               "DEVICE",
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 50),
//             SizedBox(
//               height: 250,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   ...devices.map((device) {
//                     return deviceImage(
//                       imagePath: device['image']!,
//                       title: device['title']!,
//                     );
//                   }),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
