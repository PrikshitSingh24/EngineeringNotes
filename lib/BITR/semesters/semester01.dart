import 'package:flutter/material.dart';
import 'package:notess/BITR/semesters/semestersClasses/semesterClass.dart';
import 'widgets/semestersListTile.dart';
class semesterOne extends StatelessWidget {
  const semesterOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list=semesterOneClass.listSubjects();
    return Scaffold(
      appBar: AppBar(
        title: Text('Semester One'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 30,),
                for(semesterOneClass subjects in list)
                semesterOneTile(subjects: subjects,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
