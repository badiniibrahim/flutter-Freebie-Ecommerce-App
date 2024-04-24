import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:freebie/app/modules/login/views/login_view.dart';
import 'package:freebie/app/modules/sign_up/controllers/sign_up_controller.dart';
import 'package:freebie/app/shared/custom_text_field.dart';
import 'package:get/get.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

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
              "Create an account",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                fontFamily: 'GeneralSans',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Let's create your account",
              style: TextStyle(fontFamily: 'GeneralSans'),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: 'Enter your full name',
              label: "Full Name",
              isPassword: false,
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
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "By signing up you agree to our",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'GeneralSans',
                    ),
                  ),
                  TextSpan(
                    text: " Terms",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GeneralSans',
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: " ,Privacy Policy,",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GeneralSans',
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: " and",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'GeneralSans',
                    ),
                  ),
                  TextSpan(
                    text: " Cookie Use",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'GeneralSans',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  )
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
                        const MaterialStatePropertyAll<Color>(Colors.grey),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: null,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Create an Account",
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
                        "Sign Up with Google",
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
                        child: Image.asset("assets/images/facebook.png"),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Sign Up with Facebook",
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
                  "Already have an account?",
                  style: TextStyle(
                      fontFamily: 'GeneralSans',
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      color: Colors.black),
                ),
                const SizedBox(width: 1),
                InkWell(
                  onTap: () {
                    Get.to(() => const LoginView());
                  },
                  child: const Text(
                    "Log in",
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
