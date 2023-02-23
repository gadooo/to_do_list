import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';
import '../widget/taskListWidget.dart';
import '../widget/add_task_widget.dart';

// ignore: camel_case_types
class taskScreen extends StatelessWidget {
  const taskScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => SingleChildScrollView(
                      child: Container(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: AddTasckWidget((newTaskTitle) {
                            // setState(() {
                            //   tasks.add(Task(name: newTaskTitle));
                            //   Navigator.pop(context);
                            // });
                          }))));
            },
            backgroundColor: Colors.indigo[400],
            child: const Icon(Icons.add)),
        backgroundColor: Colors.teal[700],
        body: Container(
          padding:
              const EdgeInsets.only(bottom: 80, top: 60, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.playlist_add_check, size: 40, color: Colors.white),
                  SizedBox(
                    width: 20,
                  ),
                  Text("ToDayDo",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))
                ],
              ),
              Text(
                '${Provider.of<TaskData>(context).tasks.length} Tasks',
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: avoid_unnecessary_containers
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 3,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: taskList(),
                ),
              ),
            ],
          ),
        ));
  }
}
