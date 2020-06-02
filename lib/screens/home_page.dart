import 'package:flutter/material.dart';
import 'package:student_database_flutter/widgets/student_list.dart';
import 'package:student_database_flutter/screens/add_student.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          DropdownButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            items: ['Contact', 'About Us']
                .map(
                  (value) => DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  ),
                )
                .toList(),
            onChanged: (String value) {},
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.donut_small,
                    color: Colors.white,
                    size: 60.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Student Database',
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),

          //the list of students
          StudentList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddStudent(),
          );
        },
      ),
    );
  }
}
