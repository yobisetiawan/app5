import 'package:app5/modules/home/home_screen.dart';
import 'package:app5/modules/setting/setting_screen.dart';
import 'package:app5/routes/route_names.dart';
import 'package:get/get.dart';

class Routes {
  static final List<GetPage<dynamic>> pages = [
    GetPage(name: RoutesNames.home, page: () => const HomeScreen()),
    GetPage(name: RoutesNames.setting, page: () => const SettingScreen()),
  ];
}
