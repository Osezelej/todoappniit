import 'package:flutter/material.dart';

class LabelField extends StatelessWidget {
  final String label;
  final IconButton? icon;
  final int? minLines;
  final Function addtodoFunction;
  const LabelField(
      {super.key,
      required this.label,
      this.icon,
      this.minLines,
      required this.addtodoFunction});

  @override
  Widget build(BuildContext context) {
    int lines = minLines ?? 1;
    TextEditingController fieldController =
        TextEditingController.fromValue(TextEditingValue(text: ''));

    String placeHolderText = '';
    if (label.toLowerCase() == 'date') {
      placeHolderText = 'DD/MM/YYYY';
    } else if (label.toLowerCase() == 'time') {
      placeHolderText = 'hr/min';
    } else {
      placeHolderText = 'Enter Todo';
    }
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          label,
          style: TextStyle(
            color: Color.fromRGBO(9, 76, 154, 1.0),
            fontSize: 16,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          onChanged: (value) {
            addtodoFunction(value);
          },
          controller: fieldController,
          maxLines: lines,
          minLines: lines,
          decoration: InputDecoration(
              hintText: placeHolderText,
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
