import 'package:assignment3/Scenes/TaskListPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top:60),
              ),
             const Text(
                'Welcome to',
                style:  TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              const Text(
                'Plan IT',
                style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black),

              ),

              Container(
                margin: const EdgeInsets.only(top:200),
              ),
             // Add some space between the texts and the button
              const Text("Your Personal Task Management",
                style:TextStyle(fontSize: 16),
                        ),
              const Text(
          'and planning Solution.',
              style: TextStyle(color: Colors.black,fontSize: 16)
        ),

              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const TaskListPage()));
                },
             child:Container (
               margin: const EdgeInsets.only(top:10),
               padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 45),
               decoration: BoxDecoration
                 (
                 color: Colors.black87,
                 borderRadius: BorderRadius.circular(10)
               ),
               child: const Text("Let's Get Started",style:TextStyle(color: Colors.white)),
              ),
              )

                ],
          ),
        ),
      ),
    );
  }
}
