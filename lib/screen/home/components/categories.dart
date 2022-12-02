import 'package:flutter/material.dart';
import 'package:go_law/constant.dart';
import 'package:go_law/screen/home/components/categorie.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  final double boxHeight = 180.0;
  final double boxWidth = 120.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        ...categories.map((val) {
          return Categorie(
            boxWidth: boxWidth,
            boxHeight: boxHeight,
            title: val['title'],
            nbArticles: val['nbArticles'],
            color: val['color'],
            imgPath: val['image'],
          );
        })
      ]),
    );
  }
}
