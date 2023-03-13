import 'package:flutter/material.dart';
import 'package:notess/BITR/semester02/semester02class/semesterClass.dart';

class semester02Tile extends StatelessWidget {
  final semesterTwoClass subjects;
  const semester02Tile({Key? key,required this.subjects}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: ListTile(
        onTap: () {
          if(subjects.id=='01'){
            Navigator.pushNamed(context, '/mathsTwo');
          }
          else if(subjects.id=='02'){
            Navigator.pushNamed(context, '/physicsTwo');
          }
          else if(subjects.id=='03'){
            Navigator.pushNamed(context, '/focTwo');
          }
        },
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.redAccent,
        title: Text(subjects.subjects!,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
    );
  }
}
