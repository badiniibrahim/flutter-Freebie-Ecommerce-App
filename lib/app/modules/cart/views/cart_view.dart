import 'package:flutter/material.dart';
import 'package:freebie/app/shared/back/back_button.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              "assets/images/notification.png",
              width: 24.0,
              height: 24.0,
            ),
          ),
        ],
        leading: const CustomBackButton(),
        title: const Text(
          "My Cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'GeneralSans',
          ),
        ),
      ),
      body: GetBuilder(
        init: CartController(),
        initState: (_) {},
        builder: (_) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/cart-empty.png"),
                const Text(
                  "Your Cart Is Empty!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'GeneralSans',
                  ),
                ),
                const Text(
                  "When you add products, they'll appear here.",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 15,
                    fontFamily: 'GeneralSans',
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
