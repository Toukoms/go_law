import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_law/constant.dart';
import 'package:go_law/screen/contents/contents_screen.dart';

class Articles extends StatelessWidget {
  const Articles({
    Key? key,
    required this.title,
    required this.description,
    required this.color,
    required this.id,
  }) : super(key: key);

  final String title;
  final String id;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0),
        leading: Image.asset("images/pdf_img.png"),
        title: TextH3(title: title),
        trailing: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("icons/heartadd.svg"),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ContentScreen(),
            ),
          );
        },
      ),
    );
  }
}
