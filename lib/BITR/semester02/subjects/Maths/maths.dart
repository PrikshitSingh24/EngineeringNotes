import 'package:flutter/material.dart';
import 'package:notess/BITR/semester02/subjects/Maths/mathsClass.dart';
import 'package:notess/BITR/semester02/subjects/Maths/mathsTile.dart';


class mathsTwo extends StatelessWidget {
  const mathsTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list=mathsClassTwo.chapterList();
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
                for(mathsClassTwo chapters in list)
                  mathsTileTwo(chapters: chapters,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
