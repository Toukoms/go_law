import 'package:flutter/material.dart';

const double padding = 12.0;

// Primairy Color
const vert = Color.fromRGBO(0, 148, 85, 1);
const noir = Color.fromRGBO(37, 33, 34, 1);
// Secondary Color
const orange = Color.fromRGBO(246, 194, 72, 1);
const vertPomme = Color.fromRGBO(151, 168, 97, 1);
const vertClair = Color.fromRGBO(213, 227, 166, 1);

const List<Map> categories = [
  {
    "title": "Flore",
    "image": "assets/images/categories/Flore.png",
    "color": vert,
    "nbArticles": 55,
  },
  {
    "title": "Faune",
    "image": "assets/images/categories/Gorilla.png",
    "color": orange,
    "nbArticles": 55,
  },
  {
    "title": "Corruption et l’engagement d’un représentant du gouvernement",
    "image": "assets/images/categories/Bribery.png",
    "color": Color.fromRGBO(36, 87, 197, 1),
    "nbArticles": 36,
  },
  {
    "title": "Lutte contre la corruption",
    "image": "assets/images/categories/Refusing.png",
    "color": Color.fromRGBO(216, 0, 39, 1),
    "nbArticles": 72,
  },
  {
    "title": "Répression et les principes",
    "image": "assets/images/categories/Vector.png",
    "color": Color.fromRGBO(0, 0, 0, 1),
    "nbArticles": 24,
  },
  {
    "title": "Déontologie et la bonne conduite des agents publics",
    "image": "assets/images/categories/Open_Book.png",
    "color": Color.fromARGB(255, 0, 255, 145),
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
