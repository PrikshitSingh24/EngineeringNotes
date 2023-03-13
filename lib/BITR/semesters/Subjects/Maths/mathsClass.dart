class mathsClass{
  String? id;
  String? chapters;

  mathsClass({
   required this.id,
   required this.chapters,
});
  static List<mathsClass> chapterList(){
    return[
      mathsClass(id: '01', chapters: 'Calculus'),
      mathsClass(id: '02', chapters: 'Sequence and Series'),
      mathsClass(id: '03', chapters: 'Multivariable Calculus'),
      mathsClass(id: '04', chapters: 'Matrices'),

    ];
  }
}