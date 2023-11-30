import 'package:flutter/material.dart';

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
      home: const MyHomeScreen(title: 'Student App'),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key, required this.title});
  final String title;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  String? studentDetails = "Student Details:";

  void ChangeStudentDetails() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      studentDetails="Student Details: John Doe, Age: 20, Grade: A.";
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
              'Click the button to show student details',
            ),
            ElevatedButton(
            // style: ,
            onPressed: ChangeStudentDetails, 
            child: Text("Show Details", style: TextStyle(color: Colors.white),
            )),
      //       FloatingActionButton(
      //   onPressed: ChangeStudentDetails,
      //   tooltip: 'ShowDetails',
      //   child: const Icon(Icons.arrow_drop_down),
      // ),
            SizedBox(height: 20,),
            Text(
              '$studentDetails',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
