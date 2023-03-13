import 'package:flutter/material.dart';
import 'package:notess/BITR/semesters/Subjects/Bcem/bcemClass.dart';
import 'package:notess/BITR/semesters/Subjects/Bcem/bcemTile.dart';
import 'package:notess/BITR/semesters/Subjects/PPs/ppsClass.dart';
import 'package:notess/BITR/semesters/Subjects/PPs/ppsTile.dart';

class bcem extends StatelessWidget {
  const bcem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list=bcemClass.chapterList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic civil engineering and Mechanics'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 20,),
                for(bcemClass chapters in list)
                  bcemTile(chapters: chapters,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
