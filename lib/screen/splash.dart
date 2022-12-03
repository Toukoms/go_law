import 'package:flutter/material.dart';
import 'package:go_law/screen/home/home_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(
        const Duration(
          milliseconds: 3000,
        ),
        () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: ((context) => const HomePage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.6,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(95, 95, 95, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              Center(child: Image.asset("assets/images/img_splash.png")),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Center(child: Image.asset("assets/images/go_law.png")),
          const SizedBox(
            height: 45,
          ),
          Center(
            child: Container(
              width: size.width * .9,
              child: const FittedBox(
                child: Text(
                  "The best legal solution in your hands",
                  style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 80, 175)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
