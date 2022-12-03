import 'package:flutter/material.dart';
import 'package:go_law/components/bottom_navigation_bar.dart';
import 'package:go_law/constant.dart';
import 'package:go_law/screen/articles/components/articles.dart';
import 'package:go_law/global.dart' as global;

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    print(global.fav);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text(
          "Favoris",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: global.fav != []
                  ? ListView.builder(
                      itemCount: global.fav.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Articles(
                          title: global.fav[index]['title'],
                          color: Colors.white,
                          id: index.toString(),
                          liked: true,
                          path: global.fav[index]['path'],
                        );
                      },
                    )
                  : Container(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        index: 1,
      ),
    );
  }
}
