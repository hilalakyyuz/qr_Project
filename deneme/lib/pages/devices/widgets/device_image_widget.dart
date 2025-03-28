import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../utils/utils.dart';

Widget deviceImage({required String imagePath, required String title}) {
  String fileExtension = imagePath.split('.').last.toLowerCase();
  bool isPdf = fileExtension == 'pdf';
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: isPdf ? () => launchInBrowser(imagePath) : null,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 6.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child:
                  isPdf
                      ? Icon(CupertinoIcons.doc, size: 120, color: Colors.grey)
                      : CachedNetworkImage(
                        imageUrl: imagePath,
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                        placeholder:
                            (context, url) =>
                                Center(child: CircularProgressIndicator()),
                        errorWidget:
                            (context, url, error) => Icon(
                              CupertinoIcons.photo,
                              size: 120,
                              color: Colors.grey,
                            ),
                      ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
