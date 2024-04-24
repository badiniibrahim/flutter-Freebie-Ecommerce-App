import 'package:flutter/material.dart';
import 'package:freebie/app/modules/home/controllers/home_controller.dart';
import 'package:freebie/app/modules/home/wigets/chip/chip.dart';
import 'package:freebie/app/modules/home/wigets/header/header.dart';
import 'package:freebie/app/modules/home/wigets/item/item.dart';
import 'package:freebie/app/modules/home/wigets/search/search.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          const Header(),
          const Search(),
          ChipList(),
          ItemList(),
        ],
      )),
    );
  }
}
