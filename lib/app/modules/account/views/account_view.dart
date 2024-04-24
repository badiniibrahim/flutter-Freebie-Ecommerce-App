import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freebie/app/modules/login/views/login_view.dart';
import 'package:freebie/app/shared/back/back_button.dart';

import 'package:get/get.dart';

import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({super.key});
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
          "Account",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'GeneralSans',
          ),
        ),
      ),
      body: GetBuilder(
        init: AccountController(),
        initState: (_) {},
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/box.png"),
                          const SizedBox(width: 10),
                          const Text(
                            "My Orders",
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 20,
                              fontFamily: 'GeneralSans',
                            ),
                          )
                        ],
                      ),
                      Image.asset("assets/images/chevron.png"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.grey,
                  thickness: 6,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/details.png"),
                          const SizedBox(width: 10),
                          const Text(
                            "My Details",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              fontFamily: 'GeneralSans',
                            ),
                          )
                        ],
                      ),
                      Image.asset("assets/images/chevron.png"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/hom.png"),
                          const SizedBox(width: 10),
                          const Text(
                            "Address Book",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              fontFamily: 'GeneralSans',
                            ),
                          )
                        ],
                      ),
                      Image.asset("assets/images/chevron.png"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/pay.png"),
                          const SizedBox(width: 10),
                          const Text(
                            "Payment Methods",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              fontFamily: 'GeneralSans',
                            ),
                          )
                        ],
                      ),
                      Image.asset("assets/images/chevron.png"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/notif.png"),
                          const SizedBox(width: 10),
                          const Text(
                            "Notifications",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              fontFamily: 'GeneralSans',
                            ),
                          )
                        ],
                      ),
                      Image.asset("assets/images/chevron.png"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.grey,
                  thickness: 6,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/faq.png"),
                          const SizedBox(width: 10),
                          const Text(
                            "FAQs",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              fontFamily: 'GeneralSans',
                            ),
                          )
                        ],
                      ),
                      Image.asset("assets/images/chevron.png"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/helper.png"),
                          const SizedBox(width: 10),
                          const Text(
                            "Help Center",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              fontFamily: 'GeneralSans',
                            ),
                          )
                        ],
                      ),
                      Image.asset("assets/images/chevron.png"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.grey,
                  thickness: 6,
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Get.to(() => const LoginView());
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/logout.png"),
                            const SizedBox(width: 10),
                            const Text(
                              "Logout",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.red,
                                fontFamily: 'GeneralSans',
                              ),
                            )
                          ],
                        ),
                      ],
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
