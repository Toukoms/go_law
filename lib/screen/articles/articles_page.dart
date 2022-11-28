import 'package:flutter/material.dart';
import 'package:go_law/components/bottom_navigation_bar.dart';
import 'package:go_law/components/search_tool.dart';
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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        backgroundColor: widget.color.withOpacity(0.75),
        title: const TextH1(title: "Articles"),
        centerTitle: true,
      ),
      body: Container(
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: const [
                    Articles(
                      title: "Article n° 01",
                      description:
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi porro quisquam ab consectetur, reiciendis repudiandae recusandae non aut provident inventore quae officia amet labore voluptatem laboriosam autem soluta, ad eveniet.",
                    ),
                    Articles(
                      title: "Article n° 02",
                      description:
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi porro quisquam ab consectetur, reiciendis repudiandae recusandae non aut provident inventore quae officia amet labore voluptatem laboriosam autem soluta, ad eveniet.",
                    ),
                    Articles(
                      title: "Article n° 03",
                      description:
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi porro quisquam ab consectetur, reiciendis repudiandae recusandae non aut provident inventore quae officia amet labore voluptatem laboriosam autem soluta, ad eveniet.",
                    ),
                    Articles(
                      title: "Article n° 04",
                      description:
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi porro quisquam ab consectetur, reiciendis repudiandae recusandae non aut provident inventore quae officia amet labore voluptatem laboriosam autem soluta, ad eveniet.",
                    ),
                    Articles(
                      title: "Article n° 05",
                      description:
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi porro quisquam ab consectetur, reiciendis repudiandae recusandae non aut provident inventore quae officia amet labore voluptatem laboriosam autem soluta, ad eveniet.",
                    ),
                    Articles(
                      title: "Article n° 06",
                      description:
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi porro quisquam ab consectetur, reiciendis repudiandae recusandae non aut provident inventore quae officia amet labore voluptatem laboriosam autem soluta, ad eveniet.",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
