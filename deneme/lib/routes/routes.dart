import 'package:get/get.dart';
import '../pages/devices/barcode_scan_wiew.dart';
import '../pages/devices/devices_view.dart';
import '../pages/home/home_view.dart';
import '../utils/app_routes.dart';

routes() => [
  GetPage(name: AppRoutes.home, page: () => const HomeView()),
  GetPage(name: AppRoutes.devices, page: () => const DevicesView()),
  GetPage(name: AppRoutes.barcode, page: () => const BarcodeScanView()),
  // GetPage(name: AppRoutes.devicesForm, page: () => DevicesFormView()),
];
