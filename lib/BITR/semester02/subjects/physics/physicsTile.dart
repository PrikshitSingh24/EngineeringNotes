import 'package:flutter/material.dart';
import 'package:notess/BITR/semester02/subjects/physics/physicsClass.dart';

class physicsTileTwo extends StatelessWidget {
  final physicsClass chapters;
  const physicsTileTwo({Key? key,required this.chapters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ListTile(
        onTap: () {
          if(chapters.id=='01'){
            Navigator.pushNamed(context, '/databasePhysicsTwo');
          }
          else if(chapters.id=='02'){
            Navigator.pushNamed(context, '/database02PhysicsTwo');
          }
          else if(chapters.id=='04'){
            Navigator.pushNamed(context, '/database04PhysicsTwo');
          }
          else if(chapters.id=='05'){
            Navigator.pushNamed(context, '/database05PhysicsTwo');
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
