import 'package:app5/languages/messages.dart';
import 'package:app5/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App',
      // theme: theme,
      translations: Messages(),
      locale: const Locale('id', 'ID'),
      fallbackLocale: const Locale('id', 'ID'),

      getPages: Routes.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
