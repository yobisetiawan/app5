import 'package:app5/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  //tell Flutter needs to call native code before calling runApp
  WidgetsFlutterBinding.ensureInitialized();

  //storage init
  await GetStorage.init();

  //prevent device orientation changes and force portrait?
  await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(const App()));
}
