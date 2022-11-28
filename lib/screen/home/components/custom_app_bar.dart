import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final List<String> _items = ['Fr', 'Mg'];
  String currentValue = 'Fr';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("images/GoLaw.png", fit: BoxFit.cover),
          Container(
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
                });
              },
              underline: const SizedBox(),
            ),
          )
        ],
      ),
    );
  }
}
