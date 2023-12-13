import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_store/app/data/model/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileState {
  RxBool isLoading = false.obs;
  RxBool isGettingData = false.obs;

  TextEditingController loginCtrl = TextEditingController();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController surnameCtrl = TextEditingController();
  TextEditingController fatherNameCtrl = TextEditingController();

  Rxn<ProfileModel> profileModel = Rxn<ProfileModel>();

  FirebaseFirestore dataBase = FirebaseFirestore.instance;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
