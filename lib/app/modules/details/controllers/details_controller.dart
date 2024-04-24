import 'package:freebie/app/modules/details/state.dart';
import 'package:freebie/app/modules/home/wigets/item/item.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  final DetailsState state = DetailsState();

  @override
  void onInit() {
    setArgumentsInState();
    super.onInit();
  }

  void setArgumentsInState() {
    dynamic arguments = Get.arguments;
    if (arguments == null) return;
    if (Get.arguments['model'] != null) {
      state.model = Get.arguments['model'] as Model;
    }
  }

  void addToCart(Model model) {
    state.cartList.add(model);
  }
}
