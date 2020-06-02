import 'package:student_database_flutter/constants.dart';

class Student {
  String name;
  String roll;
  String classs;
  String section;
  double marks;
  Status status;

  Student(
      {this.name,
      this.roll,
      this.classs,
      this.section,
      this.status = Status.None});

  String getStatus() {
    if (status == Status.None)
      return 'None';
    else if (status == Status.Pass)
      return 'Pass';
    else
      return 'Fail';
  }

  String getMarks() {
    if (marks == null)
      return 'Unassigned';
    else
      return marks.toString();
  }
}
