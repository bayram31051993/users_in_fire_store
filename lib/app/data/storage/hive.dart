import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';

class Boxes {
  // region hive constants
  static const isLoggedIn = 'isLoggedIn';
  static const tokenId = 'tokenId';
  static const sessionId = 'sessionId';
  static const cookie = 'cookie';
  static const user = 'user';
  static const accessToken = 'accessToken';
  static const refreshToken = 'refreshToken';
  static const purposeRowCount = 'purposeRowCount';
  // static const favorites = 'favorites';
  static const passengers = 'passengers';
  static const savedPayments = 'savedPayments';
  static const pinCode = 'pinCode';
  static const cityId = 'cityId';
  static const onBoardCheck = 'onBoardCheck';
  // this is the new default card list
  static const cards = 'cards';
  // this is defined in the previous version of application.
  // this is read first time to get card list, then removed permanently.
  static const cardList = 'cardList';
  // this is for profile img path
  static const imagePath = 'imagePath';
  static const locale = 'locale';

  // Hive box names
  static const String string = 'boxString';
  static const String integer = 'boxInt';
  static const String boolean = 'boxBoolean';
  static const String purpose = 'boxPurposes';
  static const String profile = 'boxProfile';
  static const String tmcell = 'tmcell';
  static const String telecom = 'telecom';
  static const String courier = 'courier';
  static const String astu = 'astu';
  static const String fcmToken = 'fcmToken';
  static const String basketSave = 'basketSave';
  static const String favorite = 'favorite';

  static late Box<String> boxString;
  static late Box<int> boxInt;
  static late Box<bool> boxBoolean;
  static late Box<String> boxTMCELLNumbers;
  static late Box<String> boxTelecomNumbers;
  static late Box<String> boxCourierNumbers;
  static late Box<String> boxASTUNumbers;

  // static late Box<ProfileModel> boxProfile;
  static late Box<File> boxFiles;

  // Register all adapters & Initialize all boxes
  static Future<void> initBoxes() async {
    // NOTE: steps are important
    // 1. Init Hive
    await Hive.initFlutter();

    // 2. Register hive adapters
    registerHiveAdapters();

    // 3. open boxes. (These boxes needs to be opened at the beginning of the app)
    boxString = await Hive.openBox(string);
    boxInt = await Hive.openBox(integer);
    boxBoolean = await Hive.openBox(boolean);
  }

  // register hive adapter
  static void registerHiveAdapters() {}

  // Close all open hive boxes
  static void close() => Hive.close();

  // Autocomplete
}
