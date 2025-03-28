// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';

// import '../../editors/form_button_widget.dart';
// import 'widgets/devices_form_content_widget.dart';

// class DevicesFormView extends StatelessWidget {
//   DevicesFormView({super.key});

//   final formKey = GlobalKey<FormBuilderState>();

//   @override
//   Widget build(BuildContext context) {
//     return FormBuilder(
//       key: formKey,
//       child: Scaffold(
//         appBar: AppBar(
//           systemOverlayStyle: const SystemUiOverlayStyle(
//             statusBarColor: Colors.purple,
//           ),
//           title: const Text('Added Devices'),
//         ),
//         body: SafeArea(child: devicesFormContent()),
//         bottomNavigationBar: Container(
//           margin: const EdgeInsets.only(left: 16, right: 16, bottom: 22.0),
//           height: 60,
//           child: formButton(buttonName: 'Save'),
//         ),
//       ),
//     );
//   }
// }
