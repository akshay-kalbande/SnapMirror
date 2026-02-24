//import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<Uint8List?> pickImage(
  ImageSource imageSource,
  BuildContext context,
) async {
  final ImagePicker imagePicker = ImagePicker();
  XFile? xFile = await imagePicker.pickImage(
    source: imageSource,
    imageQuality: 80,
  );
  if (xFile != null) {
    return await xFile.readAsBytes();
  } else {
    if (kDebugMode) {
      print('No Image Selected');
    }
    showSnackbar(context, 'Image not selected');
  }
  return null;
}

Future<XFile?> pickImageFile(
  ImageSource imageSource,
  BuildContext context,
) async {
  final ImagePicker imagePicker = ImagePicker();
  XFile? xFile = await imagePicker.pickImage(
    source: imageSource,
    imageQuality: 80,
  );
  if (xFile != null) {
    return xFile;
  } else {
    if (kDebugMode) {
      print('No Image Selected');
    }
    showSnackbar(context, 'Image not selected');
  }
  return null;
}

void showSnackbar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content)));
}
