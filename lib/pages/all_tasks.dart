import 'package:flutter/material.dart';
import 'package:todo_app/data/tasks_data.dart';
import 'package:todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  Function delete_task;

  AllTasksScreen(this.fun, this.delete_task);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index], fun, delete_task);
        });
  }
}
