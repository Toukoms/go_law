import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:text_to_speech/text_to_speech.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({Key? key, required this.path}) : super(key: key);

  final String path;

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  @override
  Widget build(BuildContext context) {
    TextToSpeech tts = TextToSpeech();
    // Future<List<int>> _readDocumentData(String name) async {
    //   final ByteData data = await rootBundle.load('assets/pdf/$name');
    //   return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    // }

    void _readText(String text) {
      print(text);
      tts.speak(text);
    }

    // void _showResult(String text) {
    //   showDialog(
    //       context: context,
    //       builder: (BuildContext context) {
    //         return AlertDialog(
    //           title: Text('Extracted text'),
    //           content: Scrollbar(
    //             child: SingleChildScrollView(
    //               child: Text(text),
    //               physics: BouncingScrollPhysics(
    //                   parent: AlwaysScrollableScrollPhysics()),
    //             ),
    //           ),
    //           actions: [
    //             TextButton(
    //                 onPressed: () => _readText(text), child: Text('lire')),
    //             TextButton(
    //               child: Text('Close'),
    //               onPressed: () {
    //                 Navigator.of(context).pop();
    //               },
    //             )
    //           ],
    //         );
    //       });
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contenue"),
        centerTitle: true,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back),
          onTap: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: SfPdfViewer.asset('assets/pdf/${widget.path}'),
      ),
      bottomNavigationBar: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          // //Load an existing PDF document.
          // PdfDocument document =
          //     PdfDocument(inputBytes: await _readDocumentData('test.pdf'));

          // //Create a new instance of the PdfTextExtractor.
          // PdfTextExtractor extractor = PdfTextExtractor(document);

          // //Extract all the text from the document.
          // // String text = extractor.extractText();

          // //Display the text.
          // // _showResult(text);
          _readText(
              "Technique de travail employée pour couper un arbre sur pied, qui permet de contrôler la chute afin de garantir une sécurité maximale pour l’opérateur, d’éviter des dégâts aux arbres voisins, de récupérer un maximum de bois d’œuvre à la base de l’arbre, et de faciliter son extraction.");
        },
      ),
    );
  }
}
