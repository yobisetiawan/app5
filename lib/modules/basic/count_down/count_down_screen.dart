import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/modules/basic/count_down/count_down_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:get/get.dart';

class CountDownScreen extends StatelessWidget {
  const CountDownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = Get.put(CountDownController());
    return Scaffold(
      appBar: AppBar(
        title: const YbText('CountDown Widget'),
      ),
      body: Center(
        child: Countdown(
          countdownController: c.countdownController,
          builder: (_, Duration time) {
            return Text(
              'Time: ${time.inHours} : ${time.inMinutes % 60} : ${time.inSeconds % 60}',
              style: const TextStyle(fontSize: 20),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:
            Obx(() => Icon(c.isRunning.value ? Icons.stop : Icons.play_arrow)),
        onPressed: () {
          if (!c.countdownController.isRunning) {
            c.countdownController.start();
            c.isRunning.value = true;
          } else {
            c.countdownController.stop();
            c.isRunning.value = false;
          }
        },
      ),
    );
  }
}
