import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var currentIndex = 0.obs;

  @override
  void onInit() {
    //remove splashcreen
    FlutterNativeSplash.remove();

    super.onInit();
  }
}
