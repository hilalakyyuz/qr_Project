import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

import 'routes/routes.dart';
import 'themes/theme.dart';
import 'utils/app_routes.dart' show AppRoutes;

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
      statusBarIconBrightness: Brightness.dark, // dark text for status bar
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness:
          Brightness.dark, // navigation bar colortatus bar color
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Devices',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.devices,
      getPages: routes(),
      theme: lightTheme,
    );
  }
}
