import 'package:flutter/material.dart';
import 'package:notess/BITR/semesters/Subjects/PPs/ppsClass.dart';
import 'package:notess/BITR/semesters/Subjects/chemistry/chemistryClass.dart';


class ppsTile extends StatelessWidget {
  final ppsClass chapters;
  const ppsTile({Key? key,required this.chapters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ListTile(
        onTap: () {
          if(chapters.id=='01'){
            Navigator.pushNamed(context, '/databasepps');
          }
          else if(chapters.id=='02'){
            Navigator.pushNamed(context, '/databaseppsTwo');
          }
          else if(chapters.id=='03'){
            Navigator.pushNamed(context, '/databaseppsThree');
          }
          else if(chapters.id=='04'){
            Navigator.pushNamed(context, '/databaseppsFour');
          }
          else if(chapters.id=='05'){
            Navigator.pushNamed(context, '/databaseppsFive');
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
