import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_numas1/models/task.dart';
import 'package:flutter_app_numas1/widgets/tasks_list.dart';

import 'add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, tasks, child) {
        return Scaffold(
          appBar: new AppBar(
              title: new Text('What ToDo',
                style: TextStyle(color: Color(0xffb666666),),),
              backgroundColor: Color(0xffb999900),
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_sharp,  // add custom icons also
                ),
              )),
          backgroundColor: Color(0xffb999900),
          floatingActionButton: FloatingActionButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.top,
                  ),
                  child: AddTaskScreen(),
                ),
              ),
            ),
            backgroundColor: Color(0xffb999900),
            child: Icon(
                Icons.add,
                color: Color(0xffb666666),
          ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding:
                EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        size: 30,
                        color: Color(0xffb999900),
                      ),
                      backgroundColor: Color(0xffb666666),
                      radius: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'What ToDo',
                      style: TextStyle(
                        color: Color(0xffb666666),
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '${tasks?.taskCount == null ? 0 : tasks.taskCount} Tasks',
                      style: TextStyle(
                        color: Color(0xffb666666),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Color(0xffb666666),
                  ),
                  child: TasksList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}