class semesterOneClass{
  String? id;
  String? subject;

  semesterOneClass({
   required this.id,
   required this.subject,

});

  static List<semesterOneClass> listSubjects(){
    return[
      semesterOneClass(id: '01', subject: 'Mathematics'),
      semesterOneClass(id: '02', subject: 'English'),
      semesterOneClass(id: '03', subject: 'Chemistry'),
      semesterOneClass(id: '04', subject: 'Programming for problem solving'),
      semesterOneClass(id: '05', subject: 'Basic civil engineering and mechanics'),
    ];
  }

}