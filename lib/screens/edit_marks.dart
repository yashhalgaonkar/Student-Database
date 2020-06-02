import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_database_flutter/models/student_data.dart';

class EditMarks extends StatelessWidget {
  EditMarks({this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    String marks;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'New Marks',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTask) {
                marks = newTask;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<StudentData>(context, listen: false)
                    .updateMarks(marks, index);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
