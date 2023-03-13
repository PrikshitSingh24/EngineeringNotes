class bcemClass{
  String? id;
  String? chapters;

  bcemClass({
    required this.id,
    required this.chapters,
  });
  static List<bcemClass> chapterList(){
    return[
      bcemClass(id: '01', chapters: 'Building Material'),
      bcemClass(id: '02', chapters: 'Building Construction'),
      bcemClass(id: '03', chapters: 'Survey and Leveling'),
      bcemClass(id: '04', chapters: 'Equilibrium of Forces'),
      bcemClass(id: '05', chapters: 'Trusses'),
    ];
  }
}