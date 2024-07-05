import 'package:flutter/material.dart';
import 'package:to_do_curd/util/todo_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDolist = [
    ['Wake up', false],
    ['do exercise', false],
  ];

  void checkBoxChange(bool? value, int index) {
    setState(() {
      toDolist[index][1] = !toDolist[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 117, 197),
        title: Text(
          'TO DO',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDolist.length,
        itemBuilder: (context, index) {
          return ToDoTitle(
            name: toDolist[index][0],
            taskCom: toDolist[index][1],
            onChanged: (value) {
              checkBoxChange(value, index);
            },
          );
        },
      ),
    );
  }
}
