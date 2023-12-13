import 'package:fire_store/app/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<ProfileController>(
        init: ProfileController(),
        builder: (pc) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
            ),
            body: pc.state.isGettingData.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: pc.state.formKey,
                        child: Column(
                          children: [
                            StyleConstants.formSpacer15H,
                            MyTextFormField(
                              controller: pc.state.loginCtrl,
                              label: 'login',
                              hintText: 'login',
                            ),
                            StyleConstants.formSpacer15H,
                            MyTextFormField(
                              controller: pc.state.nameCtrl,
                              label: 'Имя',
                              hintText: 'Имя',
                            ),
                            StyleConstants.formSpacer15H,
                            MyTextFormField(
                              controller: pc.state.surnameCtrl,
                              label: 'Фамилия',
                              hintText: 'Фамилия',
                            ),
                            StyleConstants.formSpacer15H,
                            MyTextFormField(
                              controller: pc.state.fatherNameCtrl,
                              label: 'Очества',
                              hintText: 'Очества',
                            ),
                            StyleConstants.formSpacer15H,
                            pc.state.isLoading.value
                                ? const CircularProgressIndicator()
                                : PrimaryButton(onPressed: pc.createUser, text: 'Изменить')
                          ],
                        ),
                      ),
                    ),
                  ),
          );
        });
  }
}
