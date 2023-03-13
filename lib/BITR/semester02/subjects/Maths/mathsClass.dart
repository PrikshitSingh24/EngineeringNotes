class mathsClassTwo{
  String? id;
  String? chapters;
  
  mathsClassTwo({
   required this.id,
   required this.chapters
});
  static List<mathsClassTwo> chapterList(){
    return[
      mathsClassTwo(id: '01', chapters: 'multivariable Calculus'),
      mathsClassTwo(id: '02', chapters: 'First order ordinary differential equation'),
      mathsClassTwo(id: '03', chapters: 'Ordinary differential equation of higher order'),
    ];
  }
}