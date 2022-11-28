import 'package:flutter/material.dart';

const double padding = 12.0;

const List<Map> categories = [
  {
    "title": "Faune et flore",
    "color": Color.fromRGBO(86, 154, 19, 1),
    "nbArticles": 55,
  },
  {
    "title": "Corruption et l’engagement d’un représentant du gouvernement",
    "color": Color.fromRGBO(36, 87, 197, 1),
    "nbArticles": 36,
  },
  {
    "title": "Organisation de la lutte contre la corruption",
    "color": Color.fromRGBO(216, 0, 39, 1),
    "nbArticles": 72,
  },
  {
    "title": "Répression et les principes",
    "color": Color.fromRGBO(0, 0, 0, 1),
    "nbArticles": 24,
  },
  {
    "title": "Déontologie et la bonne conduite des agents publics",
    "color": Color.fromRGBO(13, 248, 178, 1),
    "nbArticles": 60,
  },
];

class TextH1 extends StatelessWidget {
  const TextH1({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class TextH2 extends StatelessWidget {
  const TextH2({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class TextH3 extends StatelessWidget {
  const TextH3({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
