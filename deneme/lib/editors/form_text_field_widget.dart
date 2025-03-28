import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Widget formTextField({
  required String fieldName,
  String? hintName,
  IconData? prefixIcon,
  bool? enabled,
  bool? obscureText,
  int? maxLines,
  String? Function(String?)? validator,
  IconData? suffixIcon,
}) {
  return FormBuilderTextField(
    name: fieldName,
    maxLines: maxLines,
    obscureText: obscureText ?? false,
    decoration: InputDecoration(
      hintText: hintName ?? '',
      suffixIcon: suffixIcon != null ? Icon(suffixIcon) : const SizedBox(),
      prefix: prefixIcon != null ? Icon(prefixIcon) : const SizedBox(),
    ),
    onChanged: (val) {},
    validator: validator,
    textInputAction: TextInputAction.next,
    enabled: enabled ?? true,
  );
}
