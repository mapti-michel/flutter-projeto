import 'package:flutter/material.dart';

import '../models/todo.dart';

class TodoListItem extends StatelessWidget {
  TodoListItem(
      {Key? key,
      required this.todo,
      required void Function(Todo todo) onDelete})
      : super(key: key);
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey[200],
        ),
        margin: const EdgeInsets.symmetric(
            vertical: 2), // separa os elementos da lista
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              todo.dateTime.toString(),
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Text(todo.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600, // Negrito
                )),
          ],
        ));
  }
}