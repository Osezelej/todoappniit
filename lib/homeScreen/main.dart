import 'package:flutter/material.dart';
import 'package:intro/homeScreen/widget/TodoContainer.dart';
import 'package:intro/homeScreen/widget/sizedIcon.dart';

import 'logic/todo.dart';

class HomeScreen extends StatefulWidget {
  final List<Todo> todos;
  const HomeScreen({super.key, required this.todos});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Todo> Todos;
  @override
  Widget build(BuildContext context) {
    Todos = widget.todos;

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
                children: Todos.isEmpty
                    ? [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Oops! no Todo here'),
                              Text('Click on + to add todo')
                            ],
                          ),
                        ),
                      ]
                    : Todos.map((e) => TodoContainer(todo: e)).toList(),
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
