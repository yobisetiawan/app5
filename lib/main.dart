import 'package:app5/app.dart';
import 'package:app5/providers/language_provider.dart';
import 'package:app5/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  //tell Flutter needs to call native code before calling runApp
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //storage init
  await GetStorage.init();

  //init providers
  Get.put(LanguageProvider());
  Get.put(ThemeProvider());

  
  //prevent device orientation changes and force portrait?
  await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(const App()));
}
