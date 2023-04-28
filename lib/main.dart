import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:imagem_to_base64/modules/home/home_screen.dart';
import 'package:imagem_to_base64/modules/home/home_screen_module.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [...HomeScreenModule().routers],
      debugShowCheckedModeBanner: false,
    );
  }
}
