class semesterOneCT{
  String? id;
  String? subject;
  String? color;

  semesterOneCT({
   required this.id,
   required this.subject,
    required this.color,
});
  static List<semesterOneCT> listSubjects(){
    return[
      semesterOneCT(id: '01', subject: 'Mathematics',color: 'blue'),
      semesterOneCT(id: '02', subject: 'English',color:'red'),
      semesterOneCT(id: '03', subject: 'Chemistry',color:'black'),
      semesterOneCT(id: '04', subject: 'Programming for problem solving',color: 'pink'),
      semesterOneCT(id: '05', subject: 'Basic civil engineering and mechanics',color:'purple'),
    ];
  }
}

class semesterTwoCT{
  String? id;
  String? subject;
  String? color;

  semesterTwoCT({
    required this.id,
    required this.subject,
    required this.color,
  });
  static List<semesterTwoCT> listSubjects(){
    return[
      semesterTwoCT(id: '01', subject: 'Mathematics',color: 'blue'),
      semesterTwoCT(id: '02', subject: 'Physics',color:'red'),
      semesterTwoCT(id: '03', subject: 'Fundamentals of Computer',color:'black'),
      semesterTwoCT(id: '04', subject: 'Engineering Graphics and Design',color: 'pink'),
      semesterTwoCT(id: '05', subject: 'Basic Electrical and Electronics',color:'purple'),
    ];
  }
}

class semesterThreeCT{
  String? id;
  String? subject;
  String? color;

  semesterThreeCT({
    required this.id,
    required this.subject,
    required this.color,
  });
  static List<semesterThreeCT> listSubjects(){
    return[
      semesterThreeCT(id: '01', subject: 'Mathematics',color: 'blue'),
      semesterThreeCT(id: '02', subject: 'Principal of programming language',color:'red'),
      semesterThreeCT(id: '03', subject: 'Data structure and algorithm',color:'black'),
      semesterThreeCT(id: '04', subject: 'Basic electronics and engineering',color: 'pink'),
      semesterThreeCT(id: '05', subject: 'Operating system',color:'purple'),
    ];
  }
}
