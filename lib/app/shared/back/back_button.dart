import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Get.back();
      },
      child: const Icon(
        FluentIcons.arrow_left_24_regular,
        color: Colors.black,
      ),
    );
  }
}
