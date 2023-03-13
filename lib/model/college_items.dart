import 'package:flutter/material.dart';
import 'package:notess/model/collegeClass.dart';
class college_items extends StatelessWidget {
  final collegeClass collegeclass;

  const college_items({Key? key,required this.collegeclass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow:[
          BoxShadow(
            offset: Offset(2,4),
            color: Colors.redAccent,
          )
        ],
        borderRadius: BorderRadius.circular(10),
        image:DecorationImage(
          image:AssetImage(collegeclass.collegeName!),
          fit:BoxFit.cover,
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
           if(collegeclass.id=='02') {
           Navigator.pushNamed(context, '/newWindow');
          }
           else{
              showAlertDialog(context);
           }
        },
        child:null,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent.withOpacity(0),
            elevation: 2,
            shadowColor: Colors.white.withOpacity(0.02),
            surfaceTintColor: Colors.white,

        ),
      ),
    );
  }
  showAlertDialog(BuildContext context) {

    Widget cancelButton = TextButton(
      child: Text("OK"),
      onPressed:  () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert!"),
      content: Text("The notes are being uploaded, please wait..."),
      actions: [
        cancelButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
