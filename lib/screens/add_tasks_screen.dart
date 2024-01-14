import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:todoey/models/task.dart';

class AddTasksScreen extends StatefulWidget {
  @override
  State<AddTasksScreen> createState() => _AddTasksScreenState();
}

class _AddTasksScreenState extends State<AddTasksScreen> {
   
  TextEditingController _textEditingController = TextEditingController();
  String storedText = '';
   List<Task> tasks =[
    Task(name: 'buy milk'),
    Task(name: 'buy bread'),

  ];
    

  // Task newTask = Task(name: 'do laundry');
  


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 40, right: 40),
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w800),
          ),
          TextField(
            controller: _textEditingController,
            autofocus: true,
            cursorColor: Colors.lightBlueAccent,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.maxFinite,
            child: FloatingActionButton(
              backgroundColor: Colors.lightBlueAccent,
              onPressed: () {
                setState(() {
                storedText = _textEditingController.text;
                tasks.add(Task(name:storedText));
                             });
                // print(storedText);

                // for(int i=0;i<tasks.length;i++) {
                //   print(tasks[i].name);
                // }
              },

              child: Text('ADD'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
