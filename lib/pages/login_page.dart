import 'package:client_app/controller/login_controller.dart';
import 'package:client_app/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                "Welcome",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: ctrl.loginNumberCtrl,
                keyboardType: TextInputType.phone,
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
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.deepPurple),
                  )),
              TextButton(
                  onPressed: () {
                    Get.to(const RegisterPage());
                  },
                  child: const Text(
                    "Register New  Account",
                    style: TextStyle(color: Colors.deepPurple),
                  ))
            ],
          ),
        ),
      );
    });
  }
}
