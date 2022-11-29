import 'package:flutter/material.dart';
import 'package:go_law/components/bottom_navigation_bar.dart';
import 'package:go_law/constant.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const TextH1(title: "Favoris"),
      ),
      body: Container(),
      bottomNavigationBar: const CustomBottomNavigationBar(
        index: 1,
      ),
    );
  }
}
