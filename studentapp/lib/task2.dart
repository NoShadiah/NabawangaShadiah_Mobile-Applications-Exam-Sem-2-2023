import 'package:flutter/material.dart';
import 'package:studentapp/main.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen(
      {super.key,
      required this.name,
      required this.email,
      required this.studentNumber});
  String name = "......";
  String email = "......";
  String studentNumber = "......";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: null,
          backgroundColor: Color.fromARGB(255, 0, 4, 119),
          title: Text(
            "About $name",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.person,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    weight: 200,
                    size: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:40, left: 10),
                  child: Column(
                  // mainAxisAlignment: MainAxisAlignm,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Name:"),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('      $name '),
                    
                        ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Email:"),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("      $email ")
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Student Number:"),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("     $studentNumber "),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MyHomeScreen(title: "Student App"),
                              ));
                        },
                        child: Text("close")),
                        ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MyHomeScreen(title: "Student App"),
                              ));
                        },
                        child: Text("update"))
                      ],
                    )
                  ],
                ),
                )
              ],
            ),
          ),
        )));
  }
}
