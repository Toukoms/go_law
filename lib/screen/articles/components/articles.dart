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
    return Container(
      margin: const EdgeInsets.all(padding),
      padding: const EdgeInsets.all(padding * 0.8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black54,
          width: 1.75,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextH2(
            title: title,
          ),
          Text(
            description,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
