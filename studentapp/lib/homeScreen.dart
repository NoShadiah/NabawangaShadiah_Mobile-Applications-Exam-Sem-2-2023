import 'package:flutter/material.dart';
import 'package:studentapp/about.dart';
import 'package:studentapp/student.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? buttonLabel = "Show Details";
  String studentname = "Nabawanga Shadiah";
  String studentemail = "nabawangashadiah20@gmail.com";
  String studentNumber = "2022/DCSE/023/SS:";
  String studentGrade = "A";
  int studentage = 20;

  String? studentDetails = "Student Details:";

  // new student details

  String student1name = "";
  String student1email = "";
  String student1Number = "";
  String student1Grade = "";
  String student1age = "";

// An instance of the student class
  Student student1 = Student();

  void ChangeStudentDetails() {
    setState(() {
      studentDetails = "Student Details: John Doe, Age: 20, Grade: A.";
      buttonLabel = "Hide Details";
      // setting student details
      student1.setname("John Doe");
      student1.set_age(20);
      student1.set_Grade("A");

      // getting student details
      student1name = student1.get_age();
      student1Grade = student1.get_grade();
      student1age = student1.get_age();
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

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: null,
        backgroundColor: const Color.fromARGB(255, 0, 76, 139),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.school,
              color: Color.fromARGB(255, 92, 29, 2),
              size: 90,
            ),
            const Text(
              'Click the button to show student details, when you click the button below you will be creating a new instance of the student class',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
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
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
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
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                Text("Student instance details"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Name:"),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("      $student1name ")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Age:"),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("      $student1age ")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Grade: "),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("      $student1Grade ")
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                    // style: ,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutScreen(
                                  name: studentname,
                                  email: studentemail,
                                  studentNumber: studentNumber)));
                    },
                    child: Text(
                      "About",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}
