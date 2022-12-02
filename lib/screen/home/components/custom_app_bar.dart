import 'package:flutter/material.dart';
// import 'package:go_law/components/swicth_language.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/go_law.png", fit: BoxFit.cover),
      ],
    );
  }
}
