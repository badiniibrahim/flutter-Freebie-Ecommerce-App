import 'package:flutter/material.dart';
import 'package:freebie/app/modules/forgotPassword/controllers/forgot_password_controller.dart';
import 'package:freebie/app/shared/back/back_button.dart';
import 'package:freebie/app/shared/custom_text_field.dart';
import 'package:get/get.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Forgot password",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                fontFamily: 'GeneralSans',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Enter your email for the verification process. We will send 4 digits code to your email",
              style: TextStyle(fontFamily: 'GeneralSans'),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: 'Enter your email address',
              label: "Email",
              isPassword: false,
            ),
            const SizedBox(height: 30),
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              child: SizedBox(
                width: 341,
                height: 54,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.black),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Send Code",
                        style: TextStyle(
                            fontFamily: 'GeneralSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
