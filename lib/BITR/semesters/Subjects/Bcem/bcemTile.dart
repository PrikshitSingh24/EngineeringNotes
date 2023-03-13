import 'package:flutter/material.dart';
import 'package:notess/BITR/semesters/Subjects/Bcem/bcemClass.dart';
import 'package:notess/BITR/semesters/Subjects/PPs/ppsClass.dart';
import 'package:notess/BITR/semesters/Subjects/chemistry/chemistryClass.dart';


class bcemTile extends StatelessWidget {
  final bcemClass chapters;
  const bcemTile({Key? key,required this.chapters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ListTile(
        onTap: () {
          if(chapters.id=='01'){
            Navigator.pushNamed(context, '/databasebcem');
          }
          else if(chapters.id=='02'){
            Navigator.pushNamed(context, '/databasebcemTwo');
          }
          else if(chapters.id=='03'){
            Navigator.pushNamed(context, '/databasebcemThree');
          }
          else if(chapters.id=='04'){
            Navigator.pushNamed(context, '/databasebcemFour');
          }
          else if(chapters.id=='05'){
            Navigator.pushNamed(context, '/databasebcemFive');
          }


        },
        title: Text(chapters.chapters!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        tileColor: Colors.redAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        trailing: FloatingActionButton(onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
          backgroundColor: Colors.white,
          child: Text('QB',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),),

      ),
    );
  }
}
