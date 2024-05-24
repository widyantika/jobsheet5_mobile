import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hallo World App',
      home: StudentList(),
    );
  }
}

class Student {
  final String name;
  final String nim;

  Student(this.name, this.nim);
}

class StudentList extends StatelessWidget {
  final List<Student> students = [
    Student("DWIKI LUKITO", "NIM. STI202102216"),
    Student("AYU SETIYOWATI", "NIM. STI202102218"),
    Student("WIDYANTIKA", "NIM.STI202102220"),
    Student("ALIF IRFAN IRAWAN", "NIM.STI202102227"),
    Student("FADEL ALIF AFRIZAL", "NIM.STI202102230"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hallo World"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: students.map((student) {
            int index = students.indexOf(student);

            return Container(
              color: index == 2 ? Colors.green : Colors.transparent,
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    student.name,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    student.nim,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
