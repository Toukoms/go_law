import 'package:flutter/material.dart';
import 'package:go_law/constant.dart';

class Articles extends StatelessWidget {
  const Articles({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: TextH3(title: title),
        subtitle: Text(
          description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
