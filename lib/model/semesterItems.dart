import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:notess/model/semesterClass.dart';
class semesterItems extends StatelessWidget {
  final semesterClass semesterclass;

  const semesterItems({Key? key,required this.semesterclass}) : super(key: key);

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
            image: DecorationImage(
              image: AssetImage(semesterclass.semesterName!),
              fit:BoxFit.contain,
            ),
          ),
          child: ElevatedButton(
            onPressed: () {
              if(semesterclass.id=='02')
              Navigator.pushNamed(context, '/semesterWindow');
              else{
                showAlertDialog(context);
              }
            },
            child:Center(
              child: AnimatedTextKit(animatedTexts: [
                TyperAnimatedText(semesterclass.branch!,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15
                ),
                ),
              ],
                totalRepeatCount: 1,
              ),
            ),
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
class semesterWindowWidgets extends StatelessWidget {
  final semesterWindowClass semesterwindowclass;

  const semesterWindowWidgets({Key? key,required this.semesterwindowclass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 0),
      decoration: BoxDecoration(
        boxShadow:[
          BoxShadow(
            offset: Offset(2,4),
            color: Colors.redAccent,
          )
        ],
        borderRadius: BorderRadiusDirectional.circular(5)
      ),
      child: ElevatedButton(
        onPressed: () {
          if(semesterwindowclass.id=='01'){
            Navigator.pushNamed(context, '/semesterOne');
          }
          else if(semesterwindowclass.id=='02'){
            Navigator.pushNamed(context, '/semesterTwo');
          }
          else{
            showAlertDialog(context);
          }
        },
        child:Text(semesterwindowclass.semesters!),
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

