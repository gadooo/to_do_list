// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxchange;
   final Function() listTitleDelete;
  // ignore: use_key_in_widget_constructors
  const ListItem(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxchange,
      required this.listTitleDelete});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.teal[400],
          value: isChecked,
          onChanged: checkboxchange,
        ),
         onLongPress :listTitleDelete,
        );
  }
}


// (bool? newValue) {
//             setState(() {
//               isChecked = newValue!;
//             });
//           },