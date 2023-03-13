import 'package:flutter/material.dart';
import 'package:notess/BITR/semester02/semester02class/semesterClass.dart';
import 'package:notess/BITR/semester02/widgets/semester02Tile.dart';
import 'package:notess/model/semesterClass.dart';

class semesterTwo extends StatelessWidget {
  const semesterTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list=semesterTwoClass.listOfSubjects();
    return Scaffold(
      appBar: AppBar(
       title: Text('Semester Two'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(child: ListView(
            children: [
              SizedBox(height: 30,),
              for(semesterTwoClass sub in list)
                semester02Tile(subjects: sub)
            ],
          ),
          ),
        ],
      ),
    );
  }
}
