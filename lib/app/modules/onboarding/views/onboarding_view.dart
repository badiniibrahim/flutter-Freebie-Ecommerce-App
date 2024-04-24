import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freebie/app/modules/login/views/login_view.dart';
import 'package:freebie/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        child: Stack(
          children: [
            Container(
              width: 324,
              height: 250,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              alignment: AlignmentDirectional.topStart,
              child: const Text(
                "Define yourself in your unique way.",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  fontFamily: 'GeneralSans',
                  wordSpacing: 0,
                ),
              ),
            ),
            Image.asset('assets/images/background.png'),
            Positioned(
              right: 0.0,
              child: SizedBox(
                height: 630,
                child: Image.asset('assets/images/onboard.png'),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                width: 340,
                height: 60,
                padding: const EdgeInsets.only(bottom: 10),
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
                    Get.to(() => const LoginView());
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        FluentIcons.arrow_right_24_regular,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
