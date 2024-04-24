import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:freebie/app/modules/details/views/details_view.dart';
import 'package:get/get.dart';

class Model {
  final String title;
  final String reduce;
  final String price;
  final String image;
  final String desc;

  Model(
    this.title,
    this.reduce,
    this.price,
    this.image,
    this.desc,
  );
}

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.model,
  });
  final Model model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {
          Get.to(() => const DetailsView(), arguments: {"model": model});
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  model.image,
                ),
                Container(
                  alignment: AlignmentDirectional.topEnd,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
            const SizedBox(height: 1),
            Text(
              model.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'GeneralSans',
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Text(
                  model.price,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'GeneralSans',
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 5),
                if (model.reduce.isNotEmpty)
                  Text(
                    model.reduce,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'GeneralSans',
                      color: Colors.red,
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ItemList extends StatelessWidget {
  ItemList({super.key});
  var item = [
    Model(
      "Regular Fit Slogan",
      "-52%",
      "1,190 €",
      "assets/images/1.png",
      "Contrairement à une opinion répandue, le Lorem Ipsum n'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine",
    ),
    Model(
      "Regular Fit Polo",
      "",
      "1,190 €",
      "assets/images/2.png",
      "Contrairement à une opinion répandue, le Lorem Ipsum n'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine",
    ),
    Model(
      "Regular Fit Black",
      "",
      "1,190 €",
      "assets/images/3.png",
      "Contrairement à une opinion répandue, le Lorem Ipsum n'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine",
    ),
    Model("Regular Fit V-Neck", "", "1,190 €", "assets/images/4.png",
        "Contrairement à une opinion répandue, le Lorem Ipsum n'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine"),
    // Model("Regular Fit V-Neck", "", "1,190 €", "assets/images/4.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (1 / 1.2),
      ),
      itemCount: item.length,
      itemBuilder: (BuildContext context, int index) {
        return Expanded(
            child: GridItem(
          model: item[index],
        ));
      },
    );
  }
}
