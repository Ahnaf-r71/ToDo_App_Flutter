import 'package:assignment3/Models/TaskClass.dart';
import 'package:assignment3/Scenes/AddTaskScreen.dart';
import 'package:assignment3/widgets/TaskCard.dart';
import 'package:flutter/material.dart';


class TaskListPage extends StatefulWidget {
  //We can ask for parameters in here
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  List<TaskClass> taskList=[];
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return  Scaffold(
      appBar:AppBar(
        title:const Text(
          "Task Board",
           style:TextStyle(color:Colors.black87,fontWeight: FontWeight.w700)) ,
        centerTitle: true,
        elevation:5 ,
        shadowColor: Colors.black.withOpacity(0.7),
        backgroundColor: Colors.black12,
      ),
          body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder:(
        BuildContext context,int index)
        {
         return TaskCard
         (
         taskName:taskList[index].taskName,
          details: taskList[index].details,
          dateTime:taskList[index].dateTime,
           index:0
         );
        },
    ),

      floatingActionButton: FloatingActionButton(
        onPressed:(){
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddTaskScreen()));

         ///I kept this code here since the list wont load from form so when tapping plus this part will keep generating the list either way
          taskList.add(
              TaskClass(
              taskName: "taskName",
              details: "details",
              dateTime: DateTime.now()
            )
          );
          setState(() {
          });
          print(taskList);

        },
        child:Icon(Icons.add,color:Colors.white),

      ),
    );
  }
}


