import 'package:flutter/material.dart';
import 'package:go_law/components/bottom_navigation_bar.dart';
import 'package:go_law/components/search_tool.dart';
import 'package:go_law/components/swicth_language.dart';
import 'package:go_law/constant.dart';
import 'package:go_law/screen/articles/components/articles.dart';

class ArticlesScreen extends StatefulWidget {
  const ArticlesScreen({Key? key, required this.title, required this.color})
      : super(key: key);

  final String title;
  final Color color;

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  List<Map> articles = [
    {
      "title": "Article n° 01",
      "description":
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur obcaecati libero fugiat hic eveniet aperiam enim."
    },
    {
      "title": "Article n° 02",
      "description":
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur obcaecati libero fugiat hic eveniet aperiam enim."
    },
    {
      "title": "Article n° 03",
      "description":
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur obcaecati libero fugiat hic eveniet aperiam enim."
    },
    {
      "title": "Article n° 04",
      "description":
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur obcaecati libero fugiat hic eveniet aperiam enim."
    },
    {
      "title": "Article n° 05",
      "description":
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur obcaecati libero fugiat hic eveniet aperiam enim."
    },
    {
      "title": "Article n° 06",
      "description":
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aspernatur obcaecati libero fugiat hic eveniet aperiam enim."
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        shadowColor: widget.color.withOpacity(0.4),
        title: const Text(
          "Articles",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black12, widget.color.withOpacity(0.6)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            tileMode: TileMode.mirror,
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextH2(title: widget.title),
            const SizedBox(
              height: 20,
            ),
            SearchTool(
              width: size.width,
              color: widget.color,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: articles.length,
                itemBuilder: (BuildContext context, int index) {
                  return Articles(
                    title: articles[index]['title'],
                    description: articles[index]['description'],
                    color: widget.color,
                    id: index.toString(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        index: 0,
        color: widget.color,
      ),
    );
  }
}
