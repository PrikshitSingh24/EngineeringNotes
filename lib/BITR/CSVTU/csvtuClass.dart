class semesterOneCsvtu{
  String? id;
  String? subject;
  String? color;

  semesterOneCsvtu({
    required this.id,
    required this.subject,
    required this.color,
  });
  static List<semesterOneCsvtu> listSubjects(){
    return[
      semesterOneCsvtu(id: '01', subject: 'Mathematics',color: 'blue'),
      semesterOneCsvtu(id: '02', subject: 'English',color:'red'),
      semesterOneCsvtu(id: '03', subject: 'Chemistry',color:'black'),
      semesterOneCsvtu(id: '04', subject: 'Programming for problem solving',color: 'pink'),
      semesterOneCsvtu(id: '05', subject: 'Basic civil engineering and mechanics',color:'purple'),
    ];
  }
}

class semesterTwoCsvtu{
  String? id;
  String? subject;
  String? color;

  semesterTwoCsvtu({
    required this.id,
    required this.subject,
    required this.color,
  });
  static List<semesterTwoCsvtu> listSubjects(){
    return[
      semesterTwoCsvtu(id: '01', subject: 'Mathematics',color: 'blue'),
      semesterTwoCsvtu(id: '02', subject: 'Physics',color:'red'),
      semesterTwoCsvtu(id: '03', subject: 'Fundamentals of Computer',color:'black'),
      semesterTwoCsvtu(id: '04', subject: 'Engineering Graphics and Design',color: 'pink'),
      semesterTwoCsvtu(id: '05', subject: 'Basic Electrical and Electronics',color:'purple'),
    ];
  }
}

class semesterThreeCsvtu{
  String? id;
  String? subject;
  String? color;

  semesterThreeCsvtu({
    required this.id,
    required this.subject,
    required this.color,
  });
  static List<semesterThreeCsvtu> listSubjects(){
    return[
      semesterThreeCsvtu(id: '01', subject: 'Mathematics',color: 'blue'),
      semesterThreeCsvtu(id: '02', subject: 'Principal of programming language',color:'red'),
      semesterThreeCsvtu(id: '03', subject: 'Data structure and algorithm',color:'black'),
      semesterThreeCsvtu(id: '04', subject: 'Basic electronics and engineering',color: 'pink'),
      semesterThreeCsvtu(id: '05', subject: 'Operating system',color:'purple'),
    ];
  }
}
