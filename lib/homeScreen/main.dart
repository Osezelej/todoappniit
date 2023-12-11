import 'package:flutter/material.dart';
import 'package:intro/addtodo/main.dart';
import 'package:intro/homeScreen/widget/TodoContainer.dart';
import 'package:intro/homeScreen/widget/sizedIcon.dart';

import 'logic/todo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Todo> Todos = [
    Todo(id: '1', content: 'Buy Rice'),
    Todo(id: '2', content: 'Buy kpoms'),
    Todo(id: '3', content: 'Buy shaks and rands'),
    Todo(id: '4', content: 'Buy tiny'),
    Todo(id: '5', content: 'Buy AZ'),
    Todo(id: '6', content: 'Buy house'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Todo',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        backgroundColor: Color.fromRGBO(9, 76, 154, 1.0),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedIcon(icon: Icon(Icons.calendar_month_rounded), width: 25),
                Text(
                  'Today',
                  style: TextStyle(
                      color: Color.fromRGBO(9, 76, 154, 1.0),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 18),
                ),
                SizedIcon(icon: Icon(Icons.arrow_drop_down_rounded), width: 25)
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView(
                children: Todos.map((e) => TodoContainer(content: e.content))
                    .toList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 15.0),
        child: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            Navigator.pushNamed(context, '/addtodo');
          },
          backgroundColor: Color.fromRGBO(9, 76, 154, 1.0),
          child: Icon(
            Icons.add,
          ),
          foregroundColor: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
