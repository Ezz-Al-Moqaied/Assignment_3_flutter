import 'package:flutter/material.dart';
import 'package:todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Task task;
  Function fun;
  Function delete_task;

  TaskWidget(this.task, this.fun, this.delete_task);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green[300] : Colors.black12,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        title: Text(task.title),
        value: task.isCompleted,
        onChanged: (value) {
          fun(task);
        },
        secondary: IconButton(
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {
            delete_task(task);
          },
        ),
      ),
    );
  }
}
