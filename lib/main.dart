import 'package:flutter/material.dart';
import 'package:go_law/screen/favourites/favourite_screen.dart';
import 'package:go_law/screen/home/home_page.dart';
import 'package:go_law/screen/mail/mail_screen.dart';
import 'package:go_law/screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoLaw',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 0, 148, 85),
          bottomNavigationBarTheme: Theme.of(context)
              .bottomNavigationBarTheme
              .copyWith(
                  selectedItemColor: const Color.fromRGBO(246, 194, 72, 1))),
      home: const Splash(),
      routes: {
        '/home': (context) => const HomePage(),
        '/favourites': (context) => const FavouriteScreen(),
        '/sendmail': (context) => const MailScreen(),
      },
    );
  }
}
