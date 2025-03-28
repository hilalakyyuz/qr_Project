import 'package:flutter/cupertino.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';

FormBuilderImagePicker formImage() {
  return FormBuilderImagePicker(
    name: 'noCamera',
    placeholderWidget: const Icon(CupertinoIcons.camera, size: 30),
    bottomSheetPadding: const EdgeInsets.symmetric(vertical: 24),
    availableImageSources: const [ImageSourceOption.gallery],
  );
}
