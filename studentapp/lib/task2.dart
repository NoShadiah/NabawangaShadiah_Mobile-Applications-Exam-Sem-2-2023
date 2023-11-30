import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 4, 119),
        title: Text("Student App", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            // style: ,
            onPressed: (){}, 
            child: Text("Show Details", style: TextStyle(color: Colors.white),
            )
            ),
            Text("")
        ],
      ),
    );
  }
}

