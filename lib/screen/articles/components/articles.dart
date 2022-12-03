import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_law/constant.dart';
import 'package:go_law/screen/contents/content_screen.dart';
import 'package:go_law/global.dart' as global;

class Articles extends StatefulWidget {
  const Articles({
    Key? key,
    required this.title,
    required this.color,
    required this.id,
    required this.liked,
    required this.path,
  }) : super(key: key);

  final String title;
  final String id;
  final Color color;
  final bool liked;
  final String path;

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0),
        leading: Image.asset("assets/images/pdf_img.png"),
        title: TextH3(title: widget.title),
        trailing: IconButton(
          onPressed: () {
            global.fav.add({"title": widget.title, "path": widget.path});
          },
          icon: widget.liked
              ? SvgPicture.asset("assets/icons/heartadded.svg")
              : SvgPicture.asset("assets/icons/heartadd.svg"),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContentScreen(
                path: widget.path,
              ),
            ),
          );
        },
      ),
    );
  }
}
