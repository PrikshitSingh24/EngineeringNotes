import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:notess/BITR/CSVTU/csvtuClass.dart';
import 'package:notess/BITR/CSVTU/semesterCSVTUTile.dart';

class secondPage extends StatelessWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list=semesterOneCsvtu.listSubjects();
    final list02=semesterTwoCsvtu.listSubjects();
    final list03=semesterThreeCsvtu.listSubjects();
    return Scaffold(
      appBar:AppBar(
        title: Text('Csvtu question papers'),
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
            for(semesterOneCsvtu subjects in list)
              semesterOneCsvtuTile(subjects: subjects),
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
            for(semesterTwoCsvtu subjects in list02)
              semesterTwoCsvtuTile(subjects02: subjects),
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
            for(semesterThreeCsvtu subjects in list03)
              semesterThreeCsvtuTile(subjects03: subjects),
            SizedBox(height: 30,),
          ],

        ),

        ],

      ),
    );
  }
}
