import 'package:flutter/material.dart';
import 'package:notess/BITR/semesters/Subjects/Maths/mathsClass.dart';
import 'package:notess/BITR/semesters/Subjects/Maths/mathsTile.dart';

class math extends StatelessWidget {
  const math({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list=mathsClass.chapterList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Mathematics'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 20,),
                  for(mathsClass chapters in list)
                    mathsTile(chapters: chapters,),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
