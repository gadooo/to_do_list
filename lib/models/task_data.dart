import 'package:flutter/material.dart';
import 'package:to_do_list/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
  ];
  void addTask(String newTaskTilte) {
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
