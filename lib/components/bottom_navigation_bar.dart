import 'package:flutter/material.dart';
import 'package:go_law/screen/home/home_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    List<BottomNavigationBarItem> icons = const [
      BottomNavigationBarItem(
        label: "Home",
        icon: Icon(Icons.home_outlined),
      ),
      BottomNavigationBarItem(
        label: "Favourites",
        icon: Icon(Icons.favorite_border),
      ),
      BottomNavigationBarItem(
        label: "Contactez-Nous",
        icon: Icon(Icons.mail_outline),
      ),
    ];

    return BottomNavigationBar(
      landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (int newIndex) {
        setState(() {
          currentIndex = newIndex;
        });
      },
      items: icons,
    );
  }

  Expanded iconNavigation(BuildContext context, IconData icon, screen) {
    return Expanded(
      child: IconButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (BuildContext context) => screen),
          );
        },
        icon: Icon(icon),
      ),
    );
  }
}
