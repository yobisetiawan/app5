import 'package:app5/configs/storage.dart';
import 'package:app5/helpers/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeItem {
  String code;
  Brightness brightness;
  String label;
  ThemeItem(this.code, this.brightness, this.label);
}

class ThemeProvider extends GetxController {
  final Rx<ThemeItem?> themeItem = RxNullable<ThemeItem?>().setNull();
  var list = <ThemeItem?>[].obs;

  final box = GetStorage();

  @override
  void onInit() {
    setuplist();
    setupSelected();
    super.onInit();
  }

  setuplist() {
    list.add(ThemeItem('dark', Brightness.dark, 'Dark'));
    list.add(ThemeItem('light', Brightness.light, 'Light'));
  }

  setupSelected() {
    var c = list.firstWhere(
        (element) => element?.code == box.read(Storage.theme),
        orElse: () => null);
    if (c == null) {
      themeItem(list.firstWhere((element) => element?.code == 'dark',
          orElse: () => null));
    } else {
      themeItem(c);
    }

    Get.changeTheme(buildTheme(themeItem.value!.brightness));
  }

  selectItem(ThemeItem item) {
    box.write(Storage.theme, item.code);
    setupSelected();
  }

  ThemeData buildTheme(brightness) {
    var baseTheme = ThemeData(
        brightness: brightness,
        appBarTheme: const AppBarTheme(
          elevation: 0,
        ));

    return baseTheme.copyWith(
      textTheme: GoogleFonts.montserratTextTheme(baseTheme.textTheme),
    );
  }
}
