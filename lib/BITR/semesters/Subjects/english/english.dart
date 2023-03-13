import 'package:flutter/material.dart';
import 'package:notess/BITR/semesters/Subjects/english/englishClass.dart';
import 'package:notess/BITR/semesters/Subjects/english/englishTile.dart';

class english extends StatelessWidget {
  const english({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list=englishClass.chapterList();
    return Scaffold(
      appBar: AppBar(
        title: Text('English'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 20,),
                for(englishClass chapters in list)
                  englishTile(chapters: chapters,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
