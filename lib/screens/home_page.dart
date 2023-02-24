import 'package:flutter/material.dart';
import 'package:todo/widgets/todolist.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("To Do Application")),
      body: const DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("todo/assets/images/background.jpeg"), fit: BoxFit.cover),
          ), 
          child:todo_list(),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
