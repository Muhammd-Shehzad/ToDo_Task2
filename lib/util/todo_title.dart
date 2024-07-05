import 'package:flutter/material.dart';

class ToDoTitle extends StatelessWidget {
  final String name;
  final bool taskCom;
  Function(bool?)? onChanged;

  ToDoTitle(
      {super.key,
      required this.name,
      required this.taskCom,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Container(
        height: 60,
        width: 250,
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Row(
          children: [
            Checkbox(value: taskCom, onChanged: onChanged),
            Text(
              name,
              style: TextStyle(
                decoration:
                    taskCom ? TextDecoration.lineThrough : TextDecoration.none,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
