import 'package:flutter/material.dart';
import 'package:go_law/constant.dart';
import 'package:go_law/screen/articles/articles_page.dart';

class Categorie extends StatelessWidget {
  const Categorie({
    Key? key,
    required this.boxWidth,
    required this.boxHeight,
    required this.title,
    required this.nbArticles,
    this.color = const Color.fromARGB(220, 0, 0, 0),
  }) : super(key: key);

  final double boxWidth;
  final double boxHeight;
  final String title;
  final int nbArticles;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => ArticlesScreen(
              title: title,
              color: color,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(padding),
        padding: const EdgeInsets.all(padding),
        width: boxWidth,
        height: boxHeight,
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
            // Image here: ................,
            Container(
              height: boxHeight * 0.54,
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
            TextH3(title: title),
            Text("$nbArticles articles"),
          ],
        ),
      ),
    );
  }
}
