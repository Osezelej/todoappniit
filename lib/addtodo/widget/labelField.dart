import 'package:flutter/material.dart';

class LabelField extends StatelessWidget {
  final String label;
  final IconButton? icon;
  final int? minLines;
  const LabelField({super.key, required this.label, this.icon, this.minLines});

  @override
  Widget build(BuildContext context) {
    int lines = minLines ?? 1;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(label),
        SizedBox(
          height: 10,
        ),
        TextField(
          maxLines: lines,
          minLines: lines,
          decoration: InputDecoration(
              suffixIcon: icon,
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(9, 76, 154, 1.0)))),
        )
      ]),
    );
  }
}
