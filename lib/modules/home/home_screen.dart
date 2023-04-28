import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imagem_to_base64/modules/home/home_screen_controller.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => controller.pickImage(isCamera: false),
                child: const Text('Abrir galeria'),
              ),
              ElevatedButton(
                onPressed: () => controller.pickImage(isCamera: true),
                child: const Text('Abrir câmera'),
              ),
              Column(
                children: [
                  if (controller.imageFile != null)
                    Image.file(controller.imageFile!),
                  const SizedBox(height: 16),
                  ElevatedButton(
                      onPressed: () {
                        Clipboard.setData(
                            ClipboardData(text: controller.base64Image ?? ''));
                      },
                      child: const Text('copiar'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
