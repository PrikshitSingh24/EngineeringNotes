class semesterTwoClass{
  String? id;
  String? subjects;
  
  semesterTwoClass({
   required this.id,
    required this.subjects,
});
  static List<semesterTwoClass> listOfSubjects(){
    return[
      semesterTwoClass(id: '01', subjects: 'Mathematics'),
      semesterTwoClass(id: '02', subjects: 'Physics'),
      semesterTwoClass(id: '03', subjects: 'Fundamentals of Computer'),
      semesterTwoClass(id: '04', subjects: 'Engineering Graphics and Design'),
      semesterTwoClass(id: '05', subjects: 'Basic Electrical and Electronics')
    ];
}
}