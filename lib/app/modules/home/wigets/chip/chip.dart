import 'package:flutter/material.dart';

class ChipModel {
  final String title;
  final bool selected;

  ChipModel(this.title, this.selected);
}

class ChipItem extends StatelessWidget {
  const ChipItem({
    super.key,
    required this.chipModel,
  });
  final ChipModel chipModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: SizedBox(
        child: Container(
          decoration: BoxDecoration(
            color: chipModel.selected ? Colors.black : Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
            border: Border.all(color: Colors.grey),
          ),
          width: 60.0,
          child: Center(
            child: Text(
              chipModel.title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'GeneralSans',
                color: chipModel.selected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ChipList extends StatelessWidget {
  ChipList({super.key});
  var item = [
    ChipModel("All", false),
    ChipModel("Tshirts", true),
    ChipModel("Jeans", false),
    ChipModel("Shoes", false),
    ChipModel("Pants", false),
    ChipModel("Cap", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 36.0,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.length, //list.length expected two or three
        itemBuilder: (BuildContext context, int index) {
          return ChipItem(
            chipModel: item[index],
          );
        },
      ),
    );
  }
}
