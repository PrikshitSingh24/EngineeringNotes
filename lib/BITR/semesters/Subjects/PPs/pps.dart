import 'package:flutter/material.dart';
import 'package:notess/BITR/semesters/Subjects/PPs/ppsClass.dart';
import 'package:notess/BITR/semesters/Subjects/PPs/ppsTile.dart';

class pps extends StatelessWidget {
  const pps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list=ppsClass.chapterList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Programming for problem solving'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 20,),
                for(ppsClass chapters in list)
                  ppsTile(chapters: chapters,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
