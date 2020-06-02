import 'package:flutter/foundation.dart';
import 'package:student_database_flutter/models/student.dart';
import 'package:student_database_flutter/constants.dart';

class StudentData extends ChangeNotifier {
  List<Student> studentList = [
    Student(
      name: 'Yash Halgaonkar',
      roll: '19',
      classs: 'Comp',
      section: 'A',
    ),
    Student(
      name: 'Tanishka Gupta',
      roll: '18',
      classs: 'Comp',
      section: 'A',
    ),
    Student(
      name: 'Sunita Patil',
      roll: '27',
      classs: 'IT',
      section: 'B',
    ),
    Student(
      name: 'Anushka Bhave',
      roll: '25',
      classs: 'Mechanical',
      section: 'A',
    ),
    Student(
      name: 'Ameya Panchpor',
      roll: '3',
      classs: 'Instru',
      section: 'C',
    ),
    Student(name: 'Sanket Umredkar', roll: '20', classs: 'Civil', section: 'D'),
    Student(
        name: 'Harshali Birari', roll: '30', classs: 'Chemical', section: 'A')
  ];

  int get studentCount {
    return studentList.length;
  }

  void addStudent(String name, String roll, String classs, String section) {
    studentList
        .add(Student(name: name, roll: roll, classs: classs, section: section));
    print(studentList.toString());
    notifyListeners();
  }

  void updateMarks(String marks, int index) {
    print('marks: $marks');
    print('index:$index');
    studentList[index].marks = double.parse(marks);
    if (double.parse(marks) > 50)
      studentList[index].status = Status.Pass;
    else
      studentList[index].status = Status.Fail;
    notifyListeners();
  }
}
