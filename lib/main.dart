import 'package:fire_store/app/core/lang/localization_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/app.dart';

Future<void> _initAppInitials() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();

    await Boxes.initBoxes();

    await ScreenUtil.ensureScreenSize();

    await Firebase.initializeApp();
  } catch (e) {
    debugPrint('e $e');
  }
}

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  await _initAppInitials();

  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FireStoreApp(),
    );
  }
}

class FireStoreApp extends StatefulWidget {
  const FireStoreApp({super.key});

  @override
  State<FireStoreApp> createState() => _FireStoreAppState();
}

class _FireStoreAppState extends State<FireStoreApp> {
  @override
  void initState() {
    _checkVersion();
    super.initState();
  }

  Future<void> _checkVersion() async {
    // await Updater.checkVersion(context);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final String langCode = Boxes.boxString.get(Boxes.locale) ?? 'ru';

        return ScreenUtilInit(
          useInheritedMediaQuery: true,
          designSize: Size(constraints.maxWidth, constraints.maxHeight),
          builder: (_, child) => GetMaterialApp(
            navigatorKey: Get.key,
            initialRoute: AppRoutes.profile,
            getPages: AppPages.list,
            debugShowCheckedModeBanner: false,
            locale: Locale(langCode, langCode.toUpperCase()),
            fallbackLocale: LocalizationService.fallbackLocale,
            translations: LocalizationService(),
            localizationsDelegates: const [LocaleTextDelegate()],
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: DarkMode.getThemeMode(),
          ),
        );
      },
    );
  }
}
