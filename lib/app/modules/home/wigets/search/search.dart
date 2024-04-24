import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:freebie/app/shared/custom_text_field.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 281,
            child: CustomTextField(
              hintText: "Search for clothes",
              label: "",
              isPassword: true,
              icon: Icon(
                FluentIcons.mic_24_regular,
                color: Colors.grey,
              ),
              prefix: Icon(
                FluentIcons.search_24_regular,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            height: 52.0,
            width: 52.0,
            child: Image.asset(
              "assets/images/filter.png",
              width: 2.0,
              height: 2.0,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
