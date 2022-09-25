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

class FontItem {
  String code;
  String label;
  FontItem(this.code, this.label);
}

class ThemeProvider extends GetxController {
  final Rx<ThemeItem?> themeItem = RxNullable<ThemeItem?>().setNull();
  final Rx<FontItem?> fontItem = RxNullable<FontItem?>().setNull();
  var list = <ThemeItem?>[].obs;
  var listFonts = <FontItem?>[].obs;

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

    listFonts.add(FontItem('montserrat', 'Montserrat Font'));
    listFonts.add(FontItem('lato', 'Lato Font'));
  }

  setupSelected() {
    var c = list.firstWhere(
        (element) => element?.code == box.read(Storage.theme),
        orElse: () => null);
    if (c == null) {
      themeItem(list.firstWhere((element) => element?.code == 'dark'));
    } else {
      themeItem(c);
    }

    setupFontSelected();
  }

  selectItem(ThemeItem item) {
    box.write(Storage.theme, item.code);
    setupSelected();
  }

  setupFontSelected() {
    var c = listFonts.firstWhere(
        (element) => element?.code == box.read(Storage.font),
        orElse: () => null);
    if (c == null) {
      fontItem(
          listFonts.firstWhere((element) => element?.code == 'montserrat'));
    } else {
      fontItem(c);
    }

    Get.changeTheme(buildTheme(themeItem.value!.brightness));
  }

  selectFont(FontItem item) {
    box.write(Storage.font, item.code);
    setupFontSelected();
  }

  ThemeData buildTheme(brightness) {
    var baseTheme = ThemeData(
        brightness: brightness,
        appBarTheme: const AppBarTheme(
          elevation: 0,
        ));

    return baseTheme.copyWith(
      textTheme: fontItem.value?.code == 'montserrat'
          ? GoogleFonts.montserratTextTheme(baseTheme.textTheme)
          : GoogleFonts.latoTextTheme(baseTheme.textTheme),
    );
  }
}
