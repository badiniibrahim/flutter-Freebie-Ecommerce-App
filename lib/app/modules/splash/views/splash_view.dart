import 'package:flutter/material.dart';
import 'package:freebie/app/modules/onboarding/views/onboarding_view.dart';
import 'package:freebie/app/modules/splash/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: InkWell(
        onTap: () {
          Get.to(() => const OnboardingView());
        },
        child: SizedBox(
          child: Stack(
            children: [
              Image.asset('assets/images/black_background.png'),
              Center(child: Image.asset('assets/images/logo_app.png')),
            ],
          ),
        ),
      ),
    );
  }
}
