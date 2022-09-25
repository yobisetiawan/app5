import 'package:app5/modules/main/main_screen.dart';
import 'package:app5/modules/setting/setting_font_screen.dart';
import 'package:app5/modules/setting/setting_language_screen.dart';
import 'package:app5/modules/setting/setting_theme_screen.dart';
import 'package:app5/routes/route_names.dart';
import 'package:get/get.dart';

class Routes {
  static final List<GetPage<dynamic>> pages = [
    GetPage(name: RoutesNames.home, page: () => const MainScreen()),
    GetPage(
        name: RoutesNames.settingTheme, page: () => const SettingThemeScreen()),
    GetPage(
        name: RoutesNames.settingLanguage,
        page: () => const SettingLanguageScreen()),
    GetPage(
        name: RoutesNames.settingFont,
        page: () => const SettingFontScreen()),
  ];
}
