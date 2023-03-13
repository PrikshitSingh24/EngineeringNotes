import 'package:flutter/material.dart';
import 'package:notess/BITR/semester02/subjects/physics/physicsClass.dart';
import 'package:notess/BITR/semester02/subjects/physics/physicsTile.dart';

class physicsTwo extends StatelessWidget {
  const physicsTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list=physicsClass.chaptersList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Physics'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 20,),
                for(physicsClass chapters in list)
                  physicsTileTwo(chapters: chapters,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
