import 'package:flutter/material.dart';
import 'package:intro/homeScreen/main.dart';
import 'package:intro/addtodo/main.dart';

import 'homeScreen/logic/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Todo> todos = [];

  @override
  Widget build(BuildContext context) {
    dynamic setterFunction(List<Todo> todoList, Todo todoItem) {
      todoList.add(todoItem);
      setState(() {
        todos = todoList;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(
              todos: todos,
            ),
        '/addtodo': (context) => AddTodo(
              setterFunction: setterFunction,
              todoList: todos,
            )
      },
      theme: ThemeData(useMaterial3: true),
    );
  }
}
