import 'package:flutter/material.dart';
import 'package:go_law/global.dart' as global;

class SwicthLanguage extends StatefulWidget {
  const SwicthLanguage({Key? key}) : super(key: key);

  @override
  State<SwicthLanguage> createState() => _SwicthLanguageState();
}

class _SwicthLanguageState extends State<SwicthLanguage> {
  final List<String> _items = ['Fr', 'Mg'];
  String currentValue = global.currentLanguages;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 56,
        width: 56,
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(3),
        ),
        child: DropdownButton<String>(
          value: currentValue,
          items: _items.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              currentValue = newValue!;
              global.currentLanguages = currentValue;
            });
          },
          underline: const SizedBox(),
        ),
      ),
    );
  }
}
