import 'package:flutter/material.dart';
import 'package:go_law/components/bottom_navigation_bar.dart';
import 'package:go_law/screen/home/components/custom_app_bar.dart';
import 'package:go_law/components/search_tool.dart';
import 'package:go_law/constant.dart';
import 'package:go_law/screen/home/components/categories.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            const CustomAppBar(),
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
      bottomNavigationBar: const CustomBottomNavigationBar(
        index: 0,
      ),
    );
  }
}
