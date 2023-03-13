import 'package:flutter/material.dart';
import 'package:notess/BITR/semester02/subjects/Foc/focClass.dart';
import 'package:notess/BITR/semester02/subjects/Foc/focTile.dart';
import 'package:notess/BITR/semester02/subjects/physics/physicsClass.dart';
import 'package:notess/BITR/semester02/subjects/physics/physicsTile.dart';

class focTwo extends StatelessWidget {
  const focTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list=focClass.chaptersList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Fundamentals of Computer'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 20,),
                for(focClass chapters in list)
                  focTwoTile(chapters: chapters,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
