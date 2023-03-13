import 'package:flutter/material.dart';
import 'package:notess/BITR/semesters/Subjects/chemistry/chemistryClass.dart';


class chemistyTile extends StatelessWidget {
  final chemistryClass chapters;
  const chemistyTile({Key? key,required this.chapters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ListTile(
        onTap: () {
          if(chapters.id=='01'){
            Navigator.pushNamed(context, '/databaseChemistry');
          }
          else if(chapters.id=='02'){
            Navigator.pushNamed(context, '/databaseChemistryTwo');
          }
          else if(chapters.id=='03'){
            Navigator.pushNamed(context, '/databaseChemistryThree');
          }
          else if(chapters.id=='04'){
            Navigator.pushNamed(context, '/databaseChemistryFour');
          }
          else if(chapters.id=='05'){
            Navigator.pushNamed(context, '/databaseChemistryFive');
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
