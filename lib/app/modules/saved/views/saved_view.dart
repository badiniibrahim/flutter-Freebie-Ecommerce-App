import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freebie/app/shared/back/back_button.dart';

import 'package:get/get.dart';

import '../controllers/saved_controller.dart';

class SavedView extends GetView<SavedController> {
  const SavedView({super.key});
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
          "Saved Items",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'GeneralSans',
          ),
        ),
      ),
      body: GetBuilder(
        init: SavedController(),
        initState: (_) {},
        builder: (_) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/heart.png"),
                const Text(
                  "No Saved items!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'GeneralSans',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "You don't have any saved items, Go to home and add some.",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                      fontFamily: 'GeneralSans',
                    ),
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
