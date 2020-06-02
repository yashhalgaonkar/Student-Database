import 'package:flutter/material.dart';
import 'package:student_database_flutter/models/student_data.dart';
import 'package:provider/provider.dart';

class AddStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name, roll, classs, section;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'New Student',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25.0),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Name'),
              textAlign: TextAlign.center,
              onChanged: (newName) {
                name = newName;
                print(name);
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Roll No'),
              textAlign: TextAlign.center,
              onChanged: (newRoll) {
                roll = newRoll;
                print(roll);
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Class'),
              textAlign: TextAlign.center,
              onChanged: (newClass) {
                classs = newClass;
                print(classs);
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Section'),
              textAlign: TextAlign.center,
              onChanged: (newSection) {
                section = newSection;
                print(section);
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<StudentData>(context, listen: false)
                    .addStudent(name, roll, classs, section);

                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
