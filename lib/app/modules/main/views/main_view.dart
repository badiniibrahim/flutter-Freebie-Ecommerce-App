import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:freebie/app/modules/account/views/account_view.dart';
import 'package:freebie/app/modules/cart/views/cart_view.dart';
import 'package:freebie/app/modules/home/views/home_view.dart';
import 'package:freebie/app/modules/saved/views/saved_view.dart';
import 'package:freebie/app/modules/search/views/search_view.dart';

import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      initState: (_) {},
      builder: (_) {
        return Obx(
          () => Scaffold(
            body: [
              const HomeView(),
              const SearchView(),
              const SavedView(),
              const CartView(),
              const AccountView()
            ][controller.state.currentPageIndex],
            bottomNavigationBar: NavigationBar(
              elevation: 3.0,
              backgroundColor: Colors.white,
              destinations: const [
                NavigationDestination(
                  label: "Home",
                  icon: Icon(
                    FluentIcons.home_24_regular,
                    color: Colors.black,
                  ),
                ),
                NavigationDestination(
                  label: "Search",
                  icon: Icon(
                    FluentIcons.search_24_regular,
                    color: Colors.black,
                  ),
                ),
                NavigationDestination(
                  label: "Saved",
                  icon: Icon(
                    FluentIcons.heart_24_regular,
                    color: Colors.black,
                  ),
                ),
                NavigationDestination(
                  label: "Cart",
                  icon: Icon(
                    FluentIcons.cart_24_regular,
                    color: Colors.black,
                  ),
                ),
                NavigationDestination(
                  label: "Account",
                  icon: Icon(
                    FluentIcons.person_24_regular,
                    color: Colors.black,
                  ),
                )
              ],
              selectedIndex: controller.state.currentPageIndex,
              onDestinationSelected: (value) =>
                  {controller.state.currentPageIndex = value},
            ),
          ),
        );
      },
    );
  }
}
