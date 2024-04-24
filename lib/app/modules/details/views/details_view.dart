import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:freebie/app/shared/back/back_button.dart';

import 'package:get/get.dart';

import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({super.key});
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
          "Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'GeneralSans',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: GetBuilder(
          init: DetailsController(),
          initState: (_) {},
          builder: (_) {
            return Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/5.png",
                          height: 368,
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.topEnd,
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 40,
                        ),
                        child: Container(
                          height: 34,
                          width: 34,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: const Icon(FluentIcons.heart_24_regular),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      controller.state.model.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'GeneralSans',
                        fontSize: 27,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      controller.state.model.desc,
                      style: const TextStyle(
                        fontFamily: 'GeneralSans',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Icon(
                          FluentIcons.star_three_quarter_24_regular,
                          color: Colors.yellow,
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: " 4.0/5",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'GeneralSans',
                                    decoration: TextDecoration.underline),
                              ),
                              TextSpan(
                                text: " (45 reviews)",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'GeneralSans',
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Choose size",
                      style: TextStyle(
                        fontFamily: 'GeneralSans',
                        fontWeight: FontWeight.w600,
                        fontSize: 27,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                              border: Border.all(color: Colors.black),
                            ),
                            width: 50.0,
                            height: 50.0,
                            child: const Center(
                              child: Text(
                                "S",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'GeneralSans',
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                              border: Border.all(color: Colors.black),
                            ),
                            width: 50.0,
                            height: 50.0,
                            child: const Center(
                              child: Text(
                                "M",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'GeneralSans',
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                              border: Border.all(color: Colors.black),
                            ),
                            width: 50.0,
                            height: 50.0,
                            child: const Center(
                              child: Text(
                                "L",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'GeneralSans',
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(color: Colors.grey, thickness: 1),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Price",
                              style: TextStyle(
                                fontFamily: 'GeneralSans',
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              controller.state.model.price,
                              style: const TextStyle(
                                fontFamily: 'GeneralSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 250,
                          height: 54,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll<Color>(
                                      Colors.black),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              controller.addToCart(controller.state.model);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FluentIcons.cart_24_regular,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Add to Cart",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
