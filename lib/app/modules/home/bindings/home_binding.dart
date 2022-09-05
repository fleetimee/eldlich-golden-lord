import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Binding {
  @override
  // void dependencies() {
  //   Get.lazyPut<HomeController>(
  //     () => HomeController(),
  //   );
  // }

  List<Bind> dependencies() {
    return [
      Bind.lazyPut<HomeController>(
        () => HomeController(),
      )
    ];
  }
}
