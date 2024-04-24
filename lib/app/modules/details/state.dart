import 'package:freebie/app/modules/home/wigets/item/item.dart';
import 'package:get/get.dart';

class DetailsState {
  final Rx<Model> _model = Model("", "", "", "", "").obs;
  set model(value) => _model.value = value;
  Model get model => _model.value;

  final RxList<Model> _cartList = <Model>[].obs;
  set cartList(value) => _cartList.value = value;
  List<Model> get cartList => _cartList;
}
