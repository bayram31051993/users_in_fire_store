import 'dart:developer';

import 'package:fire_store/app/app.dart';
import 'package:fire_store/app/data/model/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final state = ProfileState();

  Future<void> createUser() async {
    if (!state.formKey.currentState!.validate()) return;

    state.isLoading(true);

    ProfileModel profile = ProfileModel(
      name: state.nameCtrl.text,
      surname: state.surnameCtrl.text,
      fatherName: state.fatherNameCtrl.text,
    );

    await state.dataBase.collection('Users').doc(state.loginCtrl.text).set(profile.toJson()).whenComplete(() {
      showSnack('success'.tr, 'Пользователь добален успешно');
      Boxes.boxString.put(Boxes.fcmToken, state.loginCtrl.text);
      state.isLoading(false);
    }).catchError((error, trace) {
      showSnack('error'.tr, 'Что-то пошло не так', SnackType.error);
      state.isLoading(false);
      debugPrint('$error');
    });
  }

  Future<void> getProfile() async {
    state.loginCtrl.text = Boxes.boxString.get(Boxes.fcmToken) ?? '';
    state.isGettingData(true);
    await state.dataBase.collection('Users').doc(state.loginCtrl.text).get().then((value) {
      debugPrint(' VALUE =========================> ${inspect(value)}');
      state.isGettingData(false);
      state.nameCtrl.text = value['name'] ?? '';
      state.surnameCtrl.text = value['surname'] ?? '';
      state.fatherNameCtrl.text = value['fatherName'] ?? '';
    });
  }

  @override
  void onInit() {
    getProfile();
    super.onInit();
  }
}
