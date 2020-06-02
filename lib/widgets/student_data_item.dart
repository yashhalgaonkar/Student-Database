import 'package:flutter/material.dart';
import 'package:student_database_flutter/models/student.dart';
import 'package:student_database_flutter/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student_database_flutter/screens/edit_marks.dart';

class StudentDataItem extends StatelessWidget {
  StudentDataItem({this.index, this.model});
  final int index;
  final Student model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              spreadRadius: 2,
              color: Colors.grey.shade300,
              offset: Offset(0, 0),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              //the first children
              //avatar
              Container(
                child: CircleAvatar(
                  radius: 40.0,
                  child: SvgPicture.asset(
                      'assets/avatars/avatar (${index % 9 + 1}).svg'),
                ),
              ),
              SizedBox(
                width: 15.0,
              ),

              //the details box
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Name: ${model.name}',
                        style: kTextStyle.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 16.0),
                      ),
                      Row(
                        children: [
                          Text('Class: ${model.classs.toString()}',
                              style: kTextStyle),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('Section: ${model.section}', style: kTextStyle)
                        ],
                      ),
                      Text('Roll No: ${model.roll}', style: kTextStyle),
                      Text('Marks: ${model.getMarks()}', style: kTextStyle),
                      Row(
                        children: [
                          Text('Status: ', style: kTextStyle),
                          Text(model.getStatus(), style: kTextStyle)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => EditMarks(
            index: index,
          ),
        );
      },
    );
  }
}
