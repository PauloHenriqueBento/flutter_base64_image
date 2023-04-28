import 'package:get/get.dart';
import 'package:imagem_to_base64/application/modules/modules_routers.dart';
import 'package:imagem_to_base64/modules/home/home_screen.dart';
import 'package:imagem_to_base64/modules/home/home_screen_bindings.dart';

class HomeScreenModule implements ModulesRouters {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => HomeScreen(),
      binding: HomeScreenBindings(),
    )
  ];
}
