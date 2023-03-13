import 'package:flutter/material.dart';
import 'package:notess/BITR/semesters/semestersClasses/semesterClass.dart';

class semesterOneTile extends StatelessWidget {
  final semesterOneClass subjects;
  const semesterOneTile({Key? key,required this.subjects}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: ListTile(
        onTap: () {
          if(subjects.id=='01'){
            Navigator.pushNamed(context, '/MathematicsOne');
          }
          else if(subjects.id=='02'){
            Navigator.pushNamed(context, '/EnglishOne');
          }
          else if(subjects.id=='03'){
            Navigator.pushNamed(context, '/ChemistryOne');
          }
          else if(subjects.id=='04'){
            Navigator.pushNamed(context, '/ppsOne');
          }
          else if(subjects.id=='05'){
            Navigator.pushNamed(context, '/bcemOne');
          }

        },
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.redAccent,
        title: Text(subjects.subject!,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
    );
  }
}
