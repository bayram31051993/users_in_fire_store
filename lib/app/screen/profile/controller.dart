import 'package:fire_store/app/app.dart';
import 'package:fire_store/app/data/api/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final state = ProfileState();

  Future<void> createUser() async {
    if (!state.formKey.currentState!.validate()) return;

    state.isLoading(true);
    String accessToken = Boxes.boxString.get(Boxes.fcmToken) ?? '';
    ProfileModel profile = ProfileModel(
        name: state.nameCtrl.text,
        surname: state.surnameCtrl.text,
        fatherName: state.fatherNameCtrl.text,
        uId: accessToken);

    state.firebaseUser = await LoginApi.registerAnonymously(state.firebaseAuth);

    if (state.firebaseUser != null) {
      await state.dataBase.collection('Users').doc(accessToken).set(profile.toJson()).whenComplete(() {
        showSnack('success'.tr, 'Пользователь добален успешно');

        state.isLoading(false);
      });
    } else {
      showSnack('error'.tr, 'Что-то пошло не так', SnackType.error);
    }
    state.isLoading(false);
  }

  Future<void> getProfile() async {
    String accessToken = Boxes.boxString.get(Boxes.fcmToken) ?? '';

    if (accessToken.isNotEmpty) {
      state.isGettingData(true);
      state.firebaseAuth.signInAnonymously().then((data) {
        User user = data.user!;
        if (accessToken == user.uid) {
          state.dataBase.collection('Users').doc(user.uid).get().then((value) {
            state.isGettingData(false);
            state.nameCtrl.text = value['name'] ?? '';
            state.surnameCtrl.text = value['surname'] ?? '';
            state.fatherNameCtrl.text = value['fatherName'] ?? '';
          });
          state.isGettingData(false);
        } else {
          state.isGettingData(false);
          state.nameCtrl.text = '';
          state.surnameCtrl.text = '';
          state.fatherNameCtrl.text = '';
        }
      });
      state.isGettingData(false);
    }
  }

  @override
  void onInit() {
    getProfile();
    super.onInit();
  }
}
