import 'package:flutter/material.dart';
import 'package:go_law/components/search_bar.dart';

class SearchTool extends StatelessWidget {
  const SearchTool({
    Key? key,
    required this.width,
    required this.color,
  }) : super(key: key);

  final Color color;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SearchBar(
          screenWidth: width * 0.80,
          color: color,
        ),
        Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(3.6),
            ),
            child: const Icon(
              Icons.filter_list,
              color: Colors.white,
            ))
      ],
    );
  }
}
