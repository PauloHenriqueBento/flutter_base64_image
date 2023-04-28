import 'package:get/instance_manager.dart';
import 'package:imagem_to_base64/modules/home/home_screen_controller.dart';

class HomeScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}
