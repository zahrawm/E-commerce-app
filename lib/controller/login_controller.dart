import 'dart:math';

import 'package:client_app/model/users.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

class LoginController extends GetxController {
  GetStorage box = GetStorage();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference userCollection;
  TextEditingController registerNameCtrl = TextEditingController();
  TextEditingController registerNumberCtrl = TextEditingController();
  OtpFieldControllerV2 otpController = OtpFieldControllerV2();
  TextEditingController loginNumberCtrl = TextEditingController();
  bool otpfieldShown = false;
  int? otpSend;
  int? otpEnter;

  @override
  void onInit() {
    userCollection = firestore.collection("users");
    super.onInit();
  }

  addUsers() {
    if (otpSend == otpEnter) {
      try {
        if (registerNameCtrl.text.isEmpty || registerNumberCtrl.text.isEmpty) {
          Get.snackbar('Error', 'Please fill the fields',
              colorText: Colors.green);
          return;
        }
        // ignore: unused_local_variable
        DocumentReference doc = userCollection.doc();
        // ignore: unused_local_variable
        Users users = Users(
          id: doc.id,
          name: registerNameCtrl.text,
          number: int.tryParse(registerNumberCtrl.text),
        );
        final usersJson = users.toJson();
        doc.set(usersJson);
        Get.snackbar('Success', 'Products added successfully',
            colorText: Colors.green);
        registerNameCtrl.clear();
        registerNumberCtrl.clear();
        otpController.clear();
      } catch (e) {
        Get.snackbar('Error', e.toString(), colorText: Colors.red);
      }
    } else {
      Get.snackbar('Error', 'Otp incorrect', colorText: Colors.red);
    }
  }

  sendOtp() {
    try {
      if (registerNameCtrl.text.isEmpty || registerNumberCtrl.text.isEmpty) {
        Get.snackbar('Error', 'Please fill the fields',
            colorText: Colors.green);
        return;
      }
      final random = Random();
      int otp = 1000 + random.nextInt(9000);
      // ignore: unused_local_variable
      String url = '';
      GetConnect().get('');
      print(otp);
      //Checking whether otp is successful or not
      // ignore: unnecessary_null_comparison
      if (otp != null) {
        otpfieldShown = true;
        otpSend = otp;
        Get.snackbar('Success', "Otp send successfully",
            colorText: Colors.green);
      } else {
        Get.snackbar('Error', "Otp not send", colorText: Colors.red);
      }
    } catch (e) {
      print(e);
    } finally {
      update();
    }
  }

  loginWithPhone() {
    String phoneNumber = loginNumberCtrl.text;
    if (phoneNumber.isNotEmpty) {}
  }
}
