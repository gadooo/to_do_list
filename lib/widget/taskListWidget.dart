// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';
import 'ListItem.dart';

// ignore: camel_case_types
class taskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      // ignore: avoid_types_as_parameter_names
      builder: (context, TaskData, child) {
        return ListView.builder(
            itemCount: TaskData.tasks.length,
            itemBuilder: (context, index) {
              return ListItem(
                isChecked: TaskData.tasks[index].isDone,
                taskTitle: TaskData.tasks[index].name,
                checkboxchange: (newValue) {
                  TaskData.updateTask(TaskData.tasks[index]);
                },
                listTitleDelete: () {
                  TaskData.deleteTask(TaskData.tasks[index]);
                },
              );
            });
      },
    );
  }
}
