import 'package:url_launcher/url_launcher.dart';


Future<void> launchInBrowser(String? url) async {
  if (url == null || url.isEmpty) return;
  if (!await launchUrl(
    Uri.parse(url),
    mode: LaunchMode.platformDefault,
    webViewConfiguration: const WebViewConfiguration(
      enableJavaScript: true,
      enableDomStorage: true,
    ),
  )) {
    // showAlert('Could not launch $url');
  }
}