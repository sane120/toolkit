import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_numas1/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Consumer<Tasks>(
      builder: (context, tasks, child) {
        return Container(
          color: Color(0xffb636301),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffb666666),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xffb999900),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 5),
                  child: TextField(
                    style: TextStyle(
                        color: Color(0xffb999900),
                        fontSize: 22),
                    decoration: InputDecoration(
                      hintText: 'name your task',
                      hintStyle: TextStyle(fontSize: 13.0, color: Color(0xffb999900)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffb999900)),
                      ),
                    ),
                    cursorColor: Color(0xffb999900),
                    textAlign: TextAlign.center,
                    autofocus: true,
                    onChanged: (newTitle) {
                      newTaskTitle = newTitle;
                    },
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 50,
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Color(0xffb666666),
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    if (newTaskTitle != null) {
                      tasks.addTask(newTaskTitle);
                      Navigator.pop(context);
                    }
                  },
                  color: Color(0xffb999900),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}