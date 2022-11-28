import 'package:flutter/material.dart';
import 'package:go_law/components/bottom_navigation_bar.dart';
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
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customAppBar(),
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
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }

  Container customAppBar() {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("images/GoLaw.png", fit: BoxFit.cover),
          DropdownButton<dynamic>(
            items: const [
              DropdownMenuItem(
                value: "Fr",
                child: Text("Fr"),
              ),
              DropdownMenuItem(
                value: "Mg",
                child: Text("Mg"),
              ),
            ],
            onChanged: (value) {
              setState(() {
                val = value;
              });
            },
            borderRadius: BorderRadius.circular(10.0),
            hint: val == "" ? const Text("Fr") : Text(val),
          )
        ],
      ),
    );
  }
}
