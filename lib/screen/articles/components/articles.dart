import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_law/constant.dart';
import 'package:go_law/screen/contents/contents_screen.dart';

class Articles extends StatelessWidget {
  const Articles({
    Key? key,
    required this.title,
    required this.description,
    required this.color,
  }) : super(key: key);

  final String title;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color.withOpacity(0.2),
      child: ListTile(
        leading: image(),
        title: TextH3(title: title),
        subtitle: Text(
          description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.heartCirclePlus),
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

  ClipRRect image() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.asset(
        "images/sample/image1.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
