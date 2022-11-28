import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = widget.index;
    List<Map> bottomNavBars = const [
      {
        "label": "Home",
        "icon": Icon(Icons.home_outlined),
      },
      {
        "label": "Favourites",
        "icon": Icon(Icons.favorite_border),
      },
      {
        "label": "Contactez-Nous",
        "icon": Icon(Icons.mail_outline),
      }
    ];
    List<String> routes = [
      '/',
      '/favourites',
      '/sendmail',
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 1,
            offset: Offset(0, -10),
            color: Colors.black12,
          )
        ],
      ),
      child: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (int newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
          Navigator.pushNamed(context, routes[currentIndex]);
        },
        items: bottomNavBars
            .map((nav) =>
                BottomNavigationBarItem(label: nav['label'], icon: nav['icon']))
            .toList(),
      ),
    );
  }
}
