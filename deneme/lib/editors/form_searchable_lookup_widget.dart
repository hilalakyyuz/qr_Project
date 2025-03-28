import 'package:flutter/material.dart';
import 'package:form_builder_extra_fields/form_builder_extra_fields.dart';

Widget formSearchableLookup({required String fieldName, String? hintName}) {
  return FormBuilderSearchableDropdown<String>(
    name: fieldName,
    onChanged: (value) {},
    dropdownSearchDecoration: const InputDecoration(
      labelStyle: TextStyle(color: Colors.black),
    ),
    asyncItems: (filter) async {
      await Future.delayed(const Duration(seconds: 1));
      return testList
          .where(
            (element) => element.toLowerCase().contains(filter.toLowerCase()),
          )
          .toList();
    },
    decoration: InputDecoration(
      hintText: hintName ?? '',
      // labelText: labelText ?? '',
    ),
  );
}

const testList = ["Java", "Dart", "Kotlin", "Java Script", "Python"];
