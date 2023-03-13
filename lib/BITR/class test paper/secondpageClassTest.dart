import 'package:flutter/material.dart';
import 'package:notess/BITR/class%20test%20paper/classTestClass.dart';
import 'package:notess/BITR/class%20test%20paper/semesterOneTile.dart';

class secondPageClassTest extends StatelessWidget {
  const secondPageClassTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list=semesterOneCT.listSubjects();
    final list02=semesterTwoCT.listSubjects();
    final list03=semesterThreeCT.listSubjects();
    return Scaffold(
      appBar: AppBar(
        title: Text('Class Test Paper'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children:[ Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('Semester One',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                ),
              ],
            ),
            for(semesterOneCT subjects in list)
              semesterOneCtTile(subjects: subjects),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('Semester Two',style: TextStyle(
                fontWeight: FontWeight.bold,
                color:Colors.white,
              ),),
            ),
            for(semesterTwoCT subjects in list02)
              semesterTwoCtTile(subjects02: subjects),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('Semester Three',style: TextStyle(
                fontWeight: FontWeight.bold,
                color:Colors.white,
              ),),
            ),
            for(semesterThreeCT subjects in list03)
              semesterThreeCtTile(subjects03: subjects),
            SizedBox(height: 30,),
          ],

        ),

    ],

      ),
    );
  }
}
