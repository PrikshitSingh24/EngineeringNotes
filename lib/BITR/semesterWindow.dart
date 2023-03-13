import 'package:flutter/material.dart';
import 'package:notess/BITR/CSVTU/custompageroute.dart';
import 'package:notess/BITR/CSVTU/secondpage.dart';
import 'package:notess/BITR/class%20test%20paper/secondpageClassTest.dart';
import 'package:notess/model/semesterClass.dart';
import 'package:notess/model/semesterItems.dart';

class semesterWindow extends StatefulWidget {

  const semesterWindow({Key? key}) : super(key: key);

  @override
  State<semesterWindow> createState() => _semesterWindowState();
}

class _semesterWindowState extends State<semesterWindow> {
  final semesterList=semesterWindowClass.semesterNames();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Computer Science Engineering"),
          elevation: 0,
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
             Expanded(
               child: GridView.count(
                 crossAxisCount: 3,
                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                 crossAxisSpacing: 40,
                 mainAxisSpacing: 0,
                      children: [
                        for (semesterWindowClass semesters in semesterList)
                          semesterWindowWidgets(semesterwindowclass: semesters)
                      ],
                    ),
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 130),
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2,4),
                        color: Colors.redAccent,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(customPageRoute(child:secondPageClassTest()));
                    },
                    child:Text('Class test papers'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent.withOpacity(0),
                      elevation: 2,
                      shadowColor: Colors.white.withOpacity(0.02),
                      surfaceTintColor: Colors.white,
                    ),
                  ),
                ),
               Container(
                 width: 200,
                 height: 40,
                 decoration: BoxDecoration(
                   boxShadow: [
                     BoxShadow(
                       offset: Offset(2,4),
                       color: Colors.redAccent,
                     )
                   ],
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: ElevatedButton(
                   onPressed: () {
                     Navigator.of(context).push(customPageRoute(child:secondPage()));
                   },
                   child:Text('CSVTU question papers'),
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.transparent.withOpacity(0),
                     elevation: 2,
                     shadowColor: Colors.white.withOpacity(0.02),
                     surfaceTintColor: Colors.white,
                   ),
                 ),
               ),
              ],
            )
          ],
        ),
    );
  }

}
