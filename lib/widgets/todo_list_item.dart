import 'package:flutter/material.dart';

// ignore: camel_case_types
class todo_list_item extends StatelessWidget {
  todo_list_item(
      {super.key,
      required this.taskName,
      required this.isChecked,
      required this.onChanged});

  bool isChecked = true;
  String? taskName = '';
  Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green[100],
        child: Row(
          children: [
            Checkbox(
              checkColor: Colors.red,
              value: isChecked,
              onChanged: onChanged,
            ),
            Text(taskName ?? ""),
          ],
        ));
  }
}
