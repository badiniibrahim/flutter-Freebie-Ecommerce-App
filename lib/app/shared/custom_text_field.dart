import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.label,
    required this.isPassword,
    this.icon,
    this.prefix,
  });
  final String hintText;
  final String label;
  final bool isPassword;
  final Icon? icon;
  final Icon? prefix;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'GeneralSans',
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 52,
          width: 341,
          child: TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(9)),
                borderSide: BorderSide(width: 2, color: Colors.grey),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(
                  width: 1,
                ),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: 'GeneralSans',
                  fontWeight: FontWeight.w500),
              suffixIcon: isPassword ? icon : const SizedBox(),
              prefixIcon: prefix,
            ),
          ),
        )
      ],
    );
  }
}
