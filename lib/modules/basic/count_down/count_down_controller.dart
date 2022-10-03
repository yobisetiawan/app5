import 'package:flutter_countdown_timer/countdown_controller.dart';
import 'package:get/get.dart';

class CountDownController extends GetxController {
  CountdownController countdownController = CountdownController(
    duration: const Duration(hours: 1, minutes: 27),
    onEnd: () {
      //print('onEnd');
    },
  );
  var isRunning = false.obs;
}
