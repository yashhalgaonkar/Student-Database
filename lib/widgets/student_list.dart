import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_database_flutter/models/student_data.dart';
import 'package:student_database_flutter/widgets/student_data_item.dart';

//the list of students that will be displayed on home screen
class StudentList extends StatelessWidget {
  const StudentList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<StudentData>(
      builder: (context, studentdata, child) {
        return Expanded(
          flex: 5,
          child: Container(
            margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
            child: ListView.builder(
              itemCount: studentdata.studentList.length,
              itemBuilder: (context, index) {
                return StudentDataItem(
                  index: index,
                  model: studentdata.studentList[index],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
