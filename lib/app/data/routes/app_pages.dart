import 'package:get/get.dart';

import '../../app.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfileScreen(),
    ),
  ];
}
