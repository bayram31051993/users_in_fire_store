import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../app.dart';

class LoginApi {
  static Future<User?> registerAnonymously(FirebaseAuth auth) async {
    try {
      User? user;
      await auth.signInAnonymously().then((data) {
        user = data.user;
        Boxes.boxString.put(Boxes.fcmToken, user!.uid);
      });
      return user;
    } catch (e) {
      debugPrint('Reg error $e');
      return null;
    }
  }
}
