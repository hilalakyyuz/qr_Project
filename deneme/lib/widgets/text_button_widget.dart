import 'package:flutter/material.dart';

import '../utils/configuration.dart';

TextButton textButton({Function? onTap, String? buttonName}) {
  return TextButton(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(black.withValues(alpha: 0.6)),
    ),
    onPressed: () => onTap!(),
    child: Text(buttonName ?? '', style: const TextStyle(color: white)),
  );
}
