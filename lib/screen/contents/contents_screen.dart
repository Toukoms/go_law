import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  final String _data = """

![image Sample](resource:images/sample/image1.png)

# Titre

## Definition
Afin d'en restituer le véritable caractère, l'administration est en droit d'écarter, comme ne lui étant pas opposables, les actes constitutifs d'un abus de droit, soit que ces actes ont un caractère fictif, soit que, recherchant le bénéfice d'une application littérale des textes ou de décisions à l'encontre des objectifs poursuivis par leurs auteurs, ils n'ont pu être inspirés par aucun autre motif que celui d'éluder ou d'atténuer les charges fiscales que l'intéressé, si ces actes n'avaient pas été passés ou réalisés, aurait normalement supportées eu égard à sa situation ou à ses activités réelles.

## Principe
En cas de désaccord sur les rectifications notifiées sur le fondement du présent article, le litige est soumis, à la demande du contribuable, à l'avis du comité de l'abus de droit fiscal. L'administration peut également soumettre le litige à l'avis du comité.

## Conclusion
Les avis rendus font l'objet d'un rapport annuel qui est rendu public.
""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: const Text(
            "Contenu",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        body: Markdown(data: _data));
  }
}
