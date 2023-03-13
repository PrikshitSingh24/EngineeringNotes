import 'package:flutter/material.dart';
import 'englishClass.dart';

class englishTile extends StatelessWidget {
  final englishClass chapters;
  const englishTile({Key? key,required this.chapters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ListTile(
        onTap: () {
          if(chapters.id=='01'){
             Navigator.pushNamed(context, '/databaseEnglish');
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
