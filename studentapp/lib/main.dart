import 'package:flutter/material.dart';
import 'package:studentapp/task2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student App',
      home: MyHomeScreen(title: 'Student App'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({super.key, required this.title});
  final String title;
  

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  
  String? buttonLabel = "Show Details";
  String studentname = "Nabawanga Shadiah";
  String studentemail = "nabawangashadiah20@gmail.com";
  String studentNumber = "2022/DCSE/023/SS:";
  String studentage = "20";
  String? studentDetails = "Student Details:";

  

  void ChangeStudentDetails() {
    setState(() {
      studentDetails = "Student Details: John Doe, Age: 20, Grade: A.";
      buttonLabel = "Hide Details";
    });
  }

  void HideStudentDetails() {
    setState(() {
      studentDetails = "Student Details: ";
      buttonLabel = "Show Details";
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the showdetails method above.

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 76, 139),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Click the button to show student details', style: TextStyle(
                color: Colors.black, 
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
                // style: ,
                onPressed: ChangeStudentDetails
                // HideStudentDetails();
                ,
                child: Text(
                  "$buttonLabel",
                  style: TextStyle(color: Colors.white),
                )),
            //
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // if(buttonLabel=="Hide Details")
                Text(
                  '$studentDetails',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                  ElevatedButton(
                  // style: ,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen(name:studentname, email: studentemail, studentNumber: studentNumber)));
                  },
                  child: Text("About", style: TextStyle(color: Colors.white),
                  )
                ),
                
              ],
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
