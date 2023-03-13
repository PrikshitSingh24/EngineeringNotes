import 'package:flutter/material.dart';
import 'package:notess/BITR/semesters/Subjects/chemistry/chemistryClass.dart';
import 'package:notess/BITR/semesters/Subjects/chemistry/chemistryTile.dart';

class chemistry extends StatelessWidget {
  const chemistry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list=chemistryClass.chapterList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Chemistry'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 20,),
                for(chemistryClass chapters in list)
                  chemistyTile(chapters: chapters,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
