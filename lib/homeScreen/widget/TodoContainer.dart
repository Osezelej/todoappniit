// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intro/homeScreen/widget/sizedIcon.dart';

class TodoContainer extends StatelessWidget {
  final String content;
  const TodoContainer({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                spreadRadius: 1,
                blurRadius: 3,
                color: const Color.fromARGB(255, 220, 220, 220))
          ]),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  content,
                  style: TextStyle(fontSize: 22, fontFamily: 'Roboto'),
                ),
                Row(
                  children: [
                    SizedIcon(
                        icon: Icon(Icons.delete_outline_rounded), width: 25),
                    SizedIcon(icon: Icon(Icons.edit), width: 25)
                  ],
                )
              ],
            ),
            Text(
              '02/12/2023-10:00Am',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),
            )
          ]),
    );
  }
}
