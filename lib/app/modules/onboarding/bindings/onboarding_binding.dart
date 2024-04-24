import 'package:freebie/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(() => OnboardingController());
  }
}
