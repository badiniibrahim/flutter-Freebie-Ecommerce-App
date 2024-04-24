import 'package:flutter/cupertino.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Discover",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'GeneralSans',
            ),
          ),
          Image.asset(
            "assets/images/notification.png",
            width: 24.0,
            height: 24.0,
          )
        ],
      ),
    );
  }
}
