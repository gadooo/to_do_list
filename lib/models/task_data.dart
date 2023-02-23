import 'package:flutter/material.dart';
import 'package:to_do_list/models/task.dart';

class TaskData extends ChangeNotifier {
  
  List<Task> tasks = [
    Task(name: "add new task"),
  ];
  void addTask(String newTaskTilte) {
    if (tasks[0].name == "add new task") {
      tasks.remove(tasks[0]);
    }
    tasks.add(Task(name: newTaskTilte));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.change();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
