import 'package:flutter/material.dart';
import 'package:notess/BITR/class%20test%20paper/classTestClass.dart';
import 'package:notess/BITR/semesters/semestersClasses/semesterClass.dart';

class semesterOneCtTile extends StatelessWidget {
  final semesterOneCT subjects;
  const semesterOneCtTile({Key? key,required this.subjects}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      labelPadding: EdgeInsets.all(5),
      label: Text(subjects.subject!),
      elevation: 2,
      onPressed: () {},
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      backgroundColor: Colors.purple,
      avatar: CircleAvatar(
        child: Text(subjects.id!),
        backgroundColor: Colors.white.withOpacity(0.8),
      ),
    );
  }
}

class semesterTwoCtTile extends StatelessWidget {
  final semesterTwoCT subjects02;
  const semesterTwoCtTile({Key? key,required this.subjects02}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      labelPadding: EdgeInsets.all(5),
      label: Text(subjects02.subject!),
      elevation: 2,
      onPressed: () {},
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      backgroundColor: Colors.blue,
      avatar: CircleAvatar(
        child: Text(subjects02.id!),
        backgroundColor: Colors.white.withOpacity(0.8),
      ),
    );
  }
}

class semesterThreeCtTile extends StatelessWidget {
  final semesterThreeCT subjects03;
  const semesterThreeCtTile({Key? key,required this.subjects03}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      labelPadding: EdgeInsets.all(5),
      label: Text(subjects03.subject!),
      elevation: 2,
      onPressed: () {},
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      backgroundColor: Colors.green,
      avatar: CircleAvatar(
        child: Text(subjects03.id!),
        backgroundColor: Colors.white.withOpacity(0.8),
      ),
    );
  }
}


