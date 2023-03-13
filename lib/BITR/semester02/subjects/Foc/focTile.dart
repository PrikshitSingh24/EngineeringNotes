import 'package:flutter/material.dart';
import 'package:notess/BITR/semester02/subjects/Foc/focClass.dart';
import 'package:notess/BITR/semester02/subjects/physics/physicsClass.dart';

class focTwoTile extends StatelessWidget {
  final focClass chapters;
  const focTwoTile({Key? key,required this.chapters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ListTile(
        onTap: () {
          if(chapters.id=='01'){
            Navigator.pushNamed(context, '/databasefocTwo');
          }
          else if(chapters.id=='02'){
            Navigator.pushNamed(context, '/database02focTwo');
          }
          else if(chapters.id=='03'){
            Navigator.pushNamed(context, '/database03focTwo');
          }
          else if(chapters.id=='04'){
            Navigator.pushNamed(context, '/database04focTwo');
          }
          else if(chapters.id=='05'){
            Navigator.pushNamed(context, '/database05focTwo');
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
