import 'package:flutter/material.dart';
import 'package:go_law/components/bottom_navigation_bar.dart';
import 'package:go_law/screen/home/components/custom_app_bar.dart';
import 'package:go_law/components/search_tool.dart';
import 'package:go_law/constant.dart';
import 'package:go_law/screen/home/components/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String val = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(padding * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 35,
            ),
            const CustomAppBar(),
            const SizedBox(
              height: 35,
            ),
            const TextH2(title: "Recherche"),
            const SizedBox(
              height: 12,
            ),
            SearchTool(
              width: size.width,
              color: Theme.of(context).backgroundColor,
            ),
            const SizedBox(
              height: 12,
            ),
            const TextH1(title: "Categories"),
            const SizedBox(
              height: 12,
            ),
            const Categories()
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        index: 0,
      ),
    );
  }
}
