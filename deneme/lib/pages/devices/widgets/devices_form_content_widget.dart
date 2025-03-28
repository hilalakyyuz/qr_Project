import 'package:flutter/material.dart';

import '../../../editors/form_group_card_widget.dart';
import '../../../editors/form_image_widget.dart';
import '../../../editors/form_searchable_lookup_widget.dart';
import '../../../editors/form_text_field_widget.dart';
import '../../../widgets/padding_widgets.dart';

Widget devicesFormContent() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: ListView(
      children: [
        formGroupCard(
          text: 'Generally Info',
          widget: [
            formTextField(fieldName: "", hintName: 'Devices Code'),
            paddingVertical8(),
            formTextField(fieldName: "", hintName: 'Devices Name'),
            paddingVertical8(),
            Row(
              children: [
                Expanded(
                  child: formTextField(fieldName: "", hintName: 'Barcode'),
                ),
                paddingHorizontal8(),
                Expanded(
                  child: formTextField(
                    fieldName: "",
                    hintName: 'Serial Number',
                  ),
                ),
              ],
            ),
            paddingVertical8(),
          ],
        ),
        paddingVertical16(),
        formGroupCard(
          text: 'Detail Info',
          widget: [
            formTextField(fieldName: "", hintName: 'Power'),
            paddingVertical8(),
            formTextField(fieldName: "", hintName: 'Voltage'),
            paddingVertical8(),
            Row(
              children: [
                Expanded(
                  child: formTextField(fieldName: "", hintName: 'Brand'),
                ),
                paddingHorizontal8(),
                Expanded(
                  child: formTextField(fieldName: "", hintName: 'Model'),
                ),
              ],
            ),
            paddingVertical8(),
            formSearchableLookup(
              fieldName: 'Devices Group',
              hintName: "Devices Group",
            ),
            paddingVertical8(),
            formSearchableLookup(
              fieldName: 'Last Location',
              hintName: "Last Location",
            ),
            paddingVertical8(),
            formTextField(fieldName: "", hintName: 'Description', maxLines: 3),
          ],
        ),
        formGroupCard(text: "Image", widget: [formImage()]),
      ],
    ),
  );
}
