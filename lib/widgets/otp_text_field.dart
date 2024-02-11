// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

class OtpTextField extends StatelessWidget {
  OtpFieldControllerV2 otpController = OtpFieldControllerV2();
  final bool visible;
  final Function(String?) onComplete;

  OtpTextField(
      {super.key,
      required this.otpController,
      required this.visible,
      required this.onComplete});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: OTPTextFieldV2(
          controller: otpController,
          length: 4,
          autoFocus: true,
          width: MediaQuery.of(context).size.width,
          textFieldAlignment: MainAxisAlignment.spaceAround,
          fieldWidth: 45,
          fieldStyle: FieldStyle.box,
          outlineBorderRadius: 15,
          style: TextStyle(fontSize: 17),
          onChanged: (pin) {
            print("Changed: " + pin);
          },
          onCompleted: (pin) {
            onComplete(pin);
          }),
    );
  }
}
