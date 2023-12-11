// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intro/addtodo/widget/labelField.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Add todo')),
        backgroundColor: Color.fromRGBO(9, 76, 154, 1.0),
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelField(
            label: 'Todo',
            minLines: 5,
          ),
          LabelField(
            label: 'Date',
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.calendar_month),
            ),
          ),
          LabelField(
            label: 'Time',
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.timelapse_rounded),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Submit'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(9, 76, 154, 1.0),
                      ),
                      foregroundColor: MaterialStatePropertyAll(
                        Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
