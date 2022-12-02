import 'package:flutter/material.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  // bool _isLoaded = false;

  // @override
  // void initState() {
  //   super.initState();
  // Load from assets
  //   SfPdfViewer document = SfPdfViewer.asset('pdf/test.pdf');
  //   setState(() {
  //     _isLoaded = true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contenue"),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
      ),
      // body: Center(child: SfPdfViewer.asset('pdf/test.pdf')),
    );
  }
}
