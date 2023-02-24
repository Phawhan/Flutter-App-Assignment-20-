import 'package:flutter/material.dart';
import 'package:todo/widgets/todo_list_item.dart';

class todo_list extends StatefulWidget {
  final Function()? onAdd;
  const todo_list({super.key, this.onAdd});

  @override
  State<todo_list> createState() => _todo_listState();
}

class _todo_listState extends State<todo_list> {
  List<List> listItems = [
    ["Juned", false],
    ["Sai Priya", false],
    ["OOPS", true],
    ["Madhu", false]
  ];
  bool isChecked = false;

  checkBobTap(val, index) {
    setState(() {
      listItems[index][1] = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: todo_list_item(
                taskName: listItems[index][0],
                isChecked: listItems[index][1],
                onChanged: (value) => checkBobTap(value, index)),
          );
        },
      ),
    );
  }
}
