import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freebie/app/modules/forgotPassword/views/forgot_password_view.dart';
import 'package:freebie/app/modules/login/controllers/login_controller.dart';
import 'package:freebie/app/modules/main/views/main_view.dart';
import 'package:freebie/app/modules/sign_up/view/sign_up_view.dart';
import 'package:freebie/app/shared/custom_text_field.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Login to your account",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                fontFamily: 'GeneralSans',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Let's great to see you again",
              style: TextStyle(fontFamily: 'GeneralSans'),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: 'Enter your email address',
              label: "Email",
              isPassword: false,
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: 'Enter your password',
              label: "Password",
              isPassword: true,
              icon: Icon(FluentIcons.eye_off_24_regular),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "Forgot your password ?",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'GeneralSans',
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.to(() => const ForgotPasswordView());
                      },
                    text: " Reset your password",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GeneralSans',
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
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
                  onPressed: () {
                    Get.to(() => const MainView());
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
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
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Positioned(
                    child: Container(
                      color: Colors.white,
                      child: const Text(
                        'Or',
                        style: TextStyle(
                          fontFamily: 'GeneralSans',
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              child: SizedBox(
                width: 341,
                height: 54,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 24.0,
                        width: 24.0,
                        child: Image.asset("assets/images/google.png"),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Login with Google",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
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
                        const MaterialStatePropertyAll<Color>(Colors.blue),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 24.0,
                        width: 24.0,
                        child: Image.asset("assets/images/facebook.png"),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Login with Facebook",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontFamily: 'GeneralSans',
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      color: Colors.black),
                ),
                const SizedBox(width: 1),
                InkWell(
                  onTap: () {
                    Get.to(() => const SignUpView());
                  },
                  child: const Text(
                    "Join",
                    style: TextStyle(
                        fontFamily: 'GeneralSans',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
