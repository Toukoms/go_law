import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.screenWidth,
    required this.color,
  }) : super(key: key);
  final double screenWidth;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: screenWidth * 0.8,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(3),
      ),
      child: const TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.search),
          suffixIconColor: Color.fromARGB(145, 65, 65, 65),
          hintText: "Recherche",
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            wordSpacing: 2.4,
          ),
          floatingLabelAlignment: FloatingLabelAlignment.center,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
