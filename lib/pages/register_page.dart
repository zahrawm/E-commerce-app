import 'package:client_app/controller/login_controller.dart';
import 'package:client_app/pages/login_page.dart';
import 'package:client_app/widgets/otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (ctrl) {
      return Scaffold(
          body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.blueGrey[50]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Create an Account",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.name,
              controller: ctrl.registerNameCtrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1200)),
                prefixIcon: const Icon(Icons.phone_iphone),
                labelText: "Name",
                hintText: "Enter your name",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              controller: ctrl.registerNumberCtrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1200)),
                prefixIcon: const Icon(Icons.phone_iphone),
                labelText: "Mobile Number",
                hintText: "Enter your mobile number",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OtpTextField(
              otpController: ctrl.otpController,
              visible: ctrl.otpfieldShown,
              onComplete: (otp) {
                ctrl.otpEnter = int.tryParse(otp ?? '0000');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (ctrl.otpfieldShown) {
                    ctrl.addUsers();
                  } else {
                    ctrl.sendOtp();
                  }
                  ctrl.sendOtp();
                },
                child: Text(
                  ctrl.otpfieldShown ? 'Register' : "Send Otp",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.deepPurple),
                )),
            TextButton(
                onPressed: () {
                  Get.to(const LoginPage());
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.deepPurple),
                ))
          ],
        ),
      ));
    });
  }
}
