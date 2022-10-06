import 'package:app5/modules/basic/avatar/avatar_widget_screen.dart';
import 'package:app5/modules/basic/button/btn_widget_screen.dart';
import 'package:app5/modules/basic/card/card_screen.dart';
import 'package:app5/modules/basic/card/cards/card01_screen.dart';
import 'package:app5/modules/basic/card/cards/card02_screen.dart';
import 'package:app5/modules/basic/count_down/count_down_screen.dart';
import 'package:app5/modules/basic/form/form_widget_screen.dart';
import 'package:app5/modules/basic/pin_code/pin_code.dart';
import 'package:app5/modules/basic/text/text_widget_screen.dart';
import 'package:app5/modules/basic/window/window_screen.dart';
import 'package:app5/modules/main/main_screen.dart';
import 'package:app5/modules/setting/setting_font_screen.dart';
import 'package:app5/modules/setting/setting_language_screen.dart';
import 'package:app5/modules/setting/setting_theme_screen.dart';
import 'package:app5/routes/route_names.dart';
import 'package:get/get.dart';

class Routes {
  static final List<GetPage<dynamic>> pages = [
    GetPage(
      name: RoutesNames.home,
      page: () => const MainScreen(),
    ),
    GetPage(
      name: RoutesNames.settingTheme,
      page: () => const SettingThemeScreen(),
    ),
    GetPage(
      name: RoutesNames.settingLanguage,
      page: () => const SettingLanguageScreen(),
    ),
    GetPage(
      name: RoutesNames.settingFont,
      page: () => const SettingFontScreen(),
    ),

    //basic widgets
    GetPage(
      name: RoutesNames.widgetText,
      page: () => const TextWidgetScreen(),
    ),
    GetPage(
      name: RoutesNames.widgetButton,
      page: () => const ButtonWidgetScreen(),
    ),
    GetPage(
      name: RoutesNames.widgetWindow,
      page: () => const WindowScreen(),
    ),
    GetPage(
      name: RoutesNames.widgetForm,
      page: () => const FormWidgetScreen(),
    ),
    GetPage(
      name: RoutesNames.widgetAvatar,
      page: () => const AvatarWidgetScreen(),
    ),
     GetPage(
      name: RoutesNames.widgetPinCode,
      page: () => const PinCodeVerificationScreen(),
    ),
    GetPage(
      name: RoutesNames.widgetCountDown,
      page: () => const CountDownScreen(),
    ),
    GetPage(
      name: RoutesNames.widgetCard,
      page: () => const CardScreen(),
    ),
    GetPage(
      name: RoutesNames.widgetCard01,
      page: () => const Card01Screen(),
    ),
      GetPage(
      name: RoutesNames.widgetCard02,
      page: () => const Card02Screen(),
    ),
    //end basic widgets
  ];
}
