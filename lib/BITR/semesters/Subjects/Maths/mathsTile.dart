import 'package:flutter/material.dart';
import 'package:notess/BITR/semesters/Subjects/Maths/mathsClass.dart';
class mathsTile extends StatelessWidget {
  final mathsClass chapters;
  const mathsTile({Key? key,required this.chapters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ListTile(
        onTap: () {
          if(chapters.id=='01'){
            Navigator.pushNamed(context, '/databaseMaths');
          }
          if(chapters.id=='02'){
            Navigator.pushNamed(context, '/database2Maths');
          }
          if(chapters.id=='03'){
            Navigator.pushNamed(context, '/database3Maths');
          }
          if(chapters.id=='04'){
            Navigator.pushNamed(context, '/database4Maths');
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
