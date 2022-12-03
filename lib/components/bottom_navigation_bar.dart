import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar({
    Key? key,
    required this.index,
    this.color = Colors.deepOrange,
  }) : super(key: key);

  final int index;
  Color color;

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
        "label": "A propos",
        "icon": Icon(Icons.info),
      }
    ];
    List<String> routes = [
      '/home',
      '/favourites',
      '/sendmail',
    ];

    return Container(
      height: 75,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            offset: Offset(0, -6),
            color: Colors.black12,
          )
        ],
      ),
      child: BottomNavigationBar(
        elevation: 4,
        // backgroundColor: Colors.transparent,
        selectedIconTheme: IconThemeData(color: widget.color),
        selectedItemColor: widget.color,
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
            .map((nav) => BottomNavigationBarItem(
                label: nav['label'],
                icon: nav['icon'],
                backgroundColor: Colors.transparent))
            .toList(),
      ),
    );
  }
}
