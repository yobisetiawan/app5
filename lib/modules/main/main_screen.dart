import 'package:app5/languages/keys_lang.dart';
import 'package:app5/modules/advanced/advanced_screen.dart';
import 'package:app5/modules/basic/basic_screen.dart'; 
import 'package:app5/modules/main/main_controller.dart';
import 'package:app5/modules/setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = Get.put(MainController());
    return Scaffold(
      body: Obx(() {
        if (c.currentIndex.value == 1) {
          return const AdvancedScreen();
        }
        if (c.currentIndex.value == 2) {
          return const SettingScreen();
        }
        return const BasicScreen();
      }),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: Lang.home.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.business),
              label: Lang.business.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: Lang.setting.tr,
            ),
          ],
          currentIndex: c.currentIndex.value,
          selectedItemColor: Colors.amber[800],
          onTap: (index) {
            c.currentIndex.value = index;
          },
        ),
      ),
    );
  }
}
