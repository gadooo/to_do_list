// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/task_data.dart';

class AddTasckWidget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Function AddTasckCallback;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  AddTasckWidget(this.AddTasckCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitel;
    return Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('add task',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.indigo[400],
                    fontWeight: FontWeight.bold)),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitel = newText;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitel!);
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                    // ignore: deprecated_member_use
                    backgroundColor: Colors.teal[400],
                    // ignore: deprecated_member_use
                    primary: Colors.white),
                child: const Text("add"))
          ],
        ));
  }
}
