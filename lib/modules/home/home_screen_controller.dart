import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreenController extends GetxController {
  File? imageFile;
  String? base64Image;

  Future<void> pickImage({required bool isCamera}) async {
    final source = isCamera ? ImageSource.camera : ImageSource.gallery;
    final image = await ImagePicker().pickImage(source: source);
    if (image != null) {
      imageFile = File(image.path);
      base64Image = base64Encode(imageFile!.readAsBytesSync());
    }
  }
}
