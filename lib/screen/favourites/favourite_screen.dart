import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_law/components/bottom_navigation_bar.dart';
import 'package:go_law/constant.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  String markdText = """
# Title
## Sous-titre

""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const TextH1(title: "Favoris"),
      ),
      body: Markdown(data: markdText),
      bottomNavigationBar: const CustomBottomNavigationBar(
        index: 1,
      ),
    );
  }
}
