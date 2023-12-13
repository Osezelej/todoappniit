// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intro/addtodo/widget/labelField.dart';

import '../homeScreen/logic/todo.dart';

class AddTodo extends StatefulWidget {
  final Function setterFunction;
  final List<Todo> todoList;
  const AddTodo(
      {super.key, required this.setterFunction, required this.todoList});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  String? _dateText;
  String? _todoText;
  String? _timeText;
  @override
  Widget build(BuildContext context) {
    setAddtodo(String? dateText, String? todoText, String? timeText) {
      _dateText = dateText ?? _dateText;
      _todoText = todoText ?? _todoText;
      _timeText = timeText ?? _timeText;
    }

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
            addtodoFunction: (value) {
              print('todo:' + value);
              setAddtodo(null, value, null);
            },
          ),
          LabelField(
            label: 'Date',
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.calendar_month),
            ),
            addtodoFunction: (value) {
              print('date: ' + value);
              setAddtodo(value, null, null);
            },
          ),
          LabelField(
            label: 'Time',
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.timelapse_rounded),
            ),
            addtodoFunction: (value) {
              print('time: ' + value);
              setAddtodo(null, null, value);
            },
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
                      widget.setterFunction(
                          widget.todoList,
                          Todo(
                              id: (widget.todoList.length + 1).toString(),
                              content: _todoText as String,
                              date: _dateText as String,
                              time: _timeText as String));
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
