

import 'package:flutter/material.dart';
class TaskCard extends StatefulWidget {
  final String taskName;
  final String details;
  final DateTime dateTime;
  int index;
   TaskCard({
    super.key,
    required this.taskName,
    required this.details,
    required this.dateTime,
    required this.index}
      );

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {






  @override
  Widget build(BuildContext context) {
    return  Container
      (
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        padding: EdgeInsets.all(15),

        decoration: BoxDecoration(
          color:Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            ///problem with this part :)
            //CircleAvatar(
            //  child: Text((index+1).toString(),style: TextStyle(
             //     color: Colors.white,
              //    fontSize: 20,
               //   fontWeight: FontWeight.w700),
             // ),
          //  ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                   Text(widget.taskName,style:const TextStyle(fontWeight:FontWeight.w900,fontSize: 16 ),),
                   Text(widget.details),
                  //down here (v) Please kindly ignore these, these were from when i was practicing from class vv
                  //Row(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  //children:
                  //[
                  //  Text(DateTime.now().toString().split(".")[0]),
                  //],
                  // ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(DateTime.now().toString().split(".")[0]),
                  ),
                  //Practise part again (v)
                  // Container(
                  //  color: Colors.purple,
                  //  width: size.width-50,
                  //  child:Text(DateTime.now().toString().split(".")[0],textAlign: TextAlign.end)
                  //)
                  //,
                ]

            ),
          ],
        )
    );
  }
}






///Experimental Stuff Below Please Ignore
/*


import 'package:flutter/material.dart';
class TaskCard extends StatelessWidget {
  final String taskName;
  final String details;
  final DateTime dateTime;
  final int index =0;
  const TaskCard({super.key, required this.taskName, required this.details, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Container
      (
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        padding: EdgeInsets.all(15),

        decoration: BoxDecoration(
          color:Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            CircleAvatar(
              child: Text((index+1).toString(),style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
              ),
            ),

          ],
        )
    );
  }

*/