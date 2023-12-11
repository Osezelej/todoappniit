import 'package:flutter/material.dart';
import 'package:intro/homeScreen/main.dart';
import 'package:intro/addtodo/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        '/addtodo': (context) => AddTodo()
      },
      theme: ThemeData(useMaterial3: true),
    );
  }
}
