import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:notess/model/semesterItems.dart';
import 'package:notess/model/semesterClass.dart';
class newWindow extends StatefulWidget {
   newWindow({Key? key}) : super(key: key);

  @override
  State<newWindow> createState() => _newWindowState();

}

class _newWindowState extends State<newWindow> {
  final _listitems=semesterClass.semesterToList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
            height: 50,
              width: 400,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
              boxShadow:[
                BoxShadow(
                  offset: Offset(2,2),
                  color: Colors.redAccent,
                )
              ]
            ),
            child: Center(
              child: AnimatedTextKit(animatedTexts: [
                TyperAnimatedText('Select your branch',
                  textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
              ],
                totalRepeatCount: 1,
              ),
            )
          ),
          SizedBox(height: 20,),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(20),
              crossAxisSpacing: 35,
              mainAxisSpacing: 35,
              children: [
                  for (semesterClass semesterclass in _listitems)
                    semesterItems(semesterclass: semesterclass),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
