

import 'package:flutter/material.dart';
import 'package:notess/BITR/semester02/semester02.dart';
import 'package:notess/BITR/semester02/subjects/Foc/database/database.dart';
import 'package:notess/BITR/semester02/subjects/Foc/database/database02.dart';
import 'package:notess/BITR/semester02/subjects/Foc/database/database03.dart';
import 'package:notess/BITR/semester02/subjects/Foc/database/database04.dart';
import 'package:notess/BITR/semester02/subjects/Foc/database/database05.dart';
import 'package:notess/BITR/semester02/subjects/Foc/focTwo.dart';
import 'package:notess/BITR/semester02/subjects/Maths/database/database.dart';
import 'package:notess/BITR/semester02/subjects/Maths/maths.dart';
import 'package:notess/BITR/semester02/subjects/physics/database/database.dart';
import 'package:notess/BITR/semester02/subjects/physics/database/database02.dart';
import 'package:notess/BITR/semester02/subjects/physics/database/database04.dart';
import 'package:notess/BITR/semester02/subjects/physics/database/database05.dart';
import 'package:notess/BITR/semester02/subjects/physics/physics.dart';
import 'package:notess/BITR/semesterWindow.dart';
import 'package:notess/BITR/semesters/Subjects/Bcem/bcem.dart';
import 'package:notess/BITR/semesters/Subjects/Bcem/database/database1.dart';
import 'package:notess/BITR/semesters/Subjects/Bcem/database/database2.dart';
import 'package:notess/BITR/semesters/Subjects/Bcem/database/database3.dart';
import 'package:notess/BITR/semesters/Subjects/Bcem/database/database4.dart';
import 'package:notess/BITR/semesters/Subjects/Bcem/database/database5.dart';
import 'package:notess/BITR/semesters/Subjects/Maths/databases/database.dart';
import 'package:notess/BITR/semesters/Subjects/Maths/databases/database2.dart';
import 'package:notess/BITR/semesters/Subjects/Maths/databases/database4.dart';
import 'package:notess/BITR/semesters/Subjects/Maths/math.dart';
import 'package:notess/BITR/semesters/Subjects/PPs/database/database1.dart';
import 'package:notess/BITR/semesters/Subjects/PPs/database/database2.dart';
import 'package:notess/BITR/semesters/Subjects/PPs/database/database3.dart';
import 'package:notess/BITR/semesters/Subjects/PPs/database/database4.dart';
import 'package:notess/BITR/semesters/Subjects/PPs/database/database5.dart';
import 'package:notess/BITR/semesters/Subjects/PPs/pps.dart';
import 'package:notess/BITR/semesters/Subjects/chemistry/chemistry.dart';
import 'package:notess/BITR/semesters/Subjects/chemistry/database/database1.dart';
import 'package:notess/BITR/semesters/Subjects/chemistry/database/database2.dart';
import 'package:notess/BITR/semesters/Subjects/chemistry/database/database3.dart';
import 'package:notess/BITR/semesters/Subjects/chemistry/database/database4.dart';
import 'package:notess/BITR/semesters/Subjects/chemistry/database/database5.dart';
import 'package:notess/BITR/semesters/Subjects/english/database/database1.dart';
import 'package:notess/BITR/semesters/Subjects/english/english.dart';
import 'package:notess/BITR/semesters/semester01.dart';
import 'package:notess/home/homePage.dart';
import 'package:notess/BITR/newWindow.dart';
import 'package:firebase_core/firebase_core.dart';
import 'BITR/semesters/Subjects/Maths/databases/database3.dart';
void main() {
  runApp(
 MaterialApp(
   routes: {
     '/':(context)=>homePage(),
     '/newWindow':(context)=> newWindow(),
     '/semesterWindow':(context)=>semesterWindow(),
     '/semesterOne':(context)=>semesterOne(),
     '/MathematicsOne':(context)=>math(),
     '/databaseMaths':(context)=>databaseMaths(),
     '/database2Maths':(context)=>database2Maths(),
     '/database3Maths':(context)=>database3Maths(),
     '/database4Maths':(context)=>database4Maths(),
     '/EnglishOne':(context)=>english(),
     '/databaseEnglish':(context)=>databaseEnglish(),
     '/ChemistryOne':(context)=>chemistry(),
     '/databaseChemistry':(context)=>databaseChemistry(),
     '/databaseChemistryTwo':(context)=>databaseChemistryTwo(),
     '/databaseChemistryThree':(context)=>databaseChemistryThree(),
     '/databaseChemistryFour':(context)=>databaseChemistryFour(),
     '/databaseChemistryFive':(context)=>databaseChemistryFive(),
     '/ppsOne':(context)=>pps(),
     '/databasepps':(context)=>databasepps(),
     '/databaseppsTwo':(context)=>databaseppsTwo(),
     '/databaseppsThree':(context)=>databaseppsThree(),
     '/databaseppsFour':(context)=>databaseppsFour(),
     '/databaseppsFive':(context)=>databaseppsFive(),
     '/bcemOne':(context)=>bcem(),
     '/databasebcem':(context)=>databasebcem(),
     '/databasebcemTwo':(context)=>databasebcemTwo(),
     '/databasebcemThree':(context)=>databasebcemThree(),
     '/databasebcemFour':(context)=>databasebcemFour(),
     '/databasebcemFive':(context)=>databasebcemFive(),
     '/semesterTwo':(context)=>semesterTwo(),
     '/mathsTwo':(context)=>mathsTwo(),
     '/databaseMathsTwo':(context)=>databaseMathsTwo(),
     '/physicsTwo':(context)=>physicsTwo(),
     '/databasePhysicsTwo':(context)=>databasePhysicsTwo(),
     '/database02PhysicsTwo':(context)=>database02PhysicsTwo(),
     '/database04PhysicsTwo':(context)=>database04PhysicsTwo(),
     '/database05PhysicsTwo':(context)=>database05PhysicsTwo(),
     '/focTwo':(context)=>focTwo(),
     '/databasefocTwo':(context)=>databasefocTwo(),
     '/database02focTwo':(context)=>database02focTwo(),
     '/database03focTwo':(context)=>database03focTwo(),
     '/database04focTwo':(context)=>database04focTwo(),
     '/database05focTwo':(context)=>database05focTwo(),
   },
 )
);
}
