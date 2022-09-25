import 'package:app5/configs/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageItem {
  String code;
  String country;
  String label;
  LanguageItem(this.code, this.country, this.label);
}

class LanguageProvider extends GetxController {
  var locale = const Locale('id', 'ID').obs;
  var list = <LanguageItem?>[].obs;

  final box = GetStorage();

  @override
  void onInit() {
    setuplist();
    setupSelected();
    super.onInit();
  }

  setuplist() {
    list.add(LanguageItem('en', 'US', 'English'));
    list.add(LanguageItem('id', 'ID', 'Bahasa Indonesia'));
  }

  setupSelected() {
    var c = list.firstWhere(
        (element) => element?.code == box.read(Storage.language),
        orElse: () => null);

    if (c == null) {
      locale(const Locale('id', 'ID'));
    } else {
      locale(Locale(c.code, c.country));
    }
    Get.updateLocale(locale.value);
  }

  selectItem(LanguageItem item) {
    box.write(Storage.language, item.code);
    setupSelected();
  }
}
