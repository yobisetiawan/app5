import 'package:app5/languages/messages.dart';
import 'package:app5/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App',
      theme: _buildTheme(Brightness.dark),
      translations: Messages(),
      locale: const Locale('id', 'ID'),
      fallbackLocale: const Locale('id', 'ID'),
      getPages: Routes.pages,
      debugShowCheckedModeBanner: false,
    );
  }

  ThemeData _buildTheme(brightness) {
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
