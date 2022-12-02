import 'package:flutter/material.dart';
import 'package:go_law/components/bottom_navigation_bar.dart';
import 'package:go_law/constant.dart';

class MailScreen extends StatefulWidget {
  const MailScreen({Key? key}) : super(key: key);

  @override
  State<MailScreen> createState() => _MailScreenState();
}

class _MailScreenState extends State<MailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(padding),
        child: Column(
          children: const [TextH1(title: "MailScreen")],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        index: 2,
      ),
    );
  }
}
