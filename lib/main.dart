import 'package:flutter/material.dart';
import 'package:student_database_flutter/models/student_data.dart';
import 'screens/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return StudentData();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Student Database',
        home: HomePage(),
      ),
    );
  }
}
