import 'package:flutter/material.dart';
class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text(
            "Add Task",
            style:TextStyle(color:Colors.black87,fontWeight: FontWeight.w700)) ,
        centerTitle: true,
        elevation:5 ,
        shadowColor: Colors.black.withOpacity(0.7),
        backgroundColor: Colors.black12,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration:InputDecoration(
                  label: Text("Task Name"),
                  alignLabelWithHint: true,
                  fillColor: Colors.grey.shade200,
                  hintText: "Please enter the name of your task"
                ) ,
              ),
              TextFormField(
                decoration:InputDecoration(
                    label: Text("Task Details"),
                    alignLabelWithHint: true,
                    fillColor: Colors.grey.shade200,
                    hintText: "Please enter details of your task"
                ) ,
                maxLines: 8,
              ),

              GestureDetector(

                  onTap: (){},
                  child:Container(
                    width: double.infinity,
                    height: 35,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 45),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Text("Add Task", style:TextStyle(color: Colors.white)),
                  )
              )



            ],
          ),
        ),
      ),
    );

    
  
  }
}
