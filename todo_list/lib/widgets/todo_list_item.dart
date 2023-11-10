import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import '../models/todo.dart';

class TodoListItem extends StatelessWidget {
  TodoListItem({Key? key, required this.todo, required this.onDelete})
      : super(key: key);
  final Todo todo;
  final Function(Todo) onDelete;

  @override
  Widget build(BuildContext context) {
    return Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.25,
          children: [
            SlidableAction(
              label: 'Delete',
              backgroundColor: Colors.red,
              icon: Icons.delete,
              onPressed: (context) {
                onDelete(todo);
              },
            ),
          ],
        ),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey[200],
            ),
            margin: const EdgeInsets.symmetric(vertical: 2), // separa os elementos da lista
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  DateFormat('dd/MM/yyyy - HH:mm').format(todo.dateTime),
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(todo.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600, // Negrito
                    )),
              ],
            )));
  }
}
