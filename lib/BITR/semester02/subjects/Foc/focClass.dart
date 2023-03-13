class focClass{
  String? id;
  String? chapters;

  focClass({
    required this.id,
    required this.chapters,
  });

  static List<focClass> chaptersList(){

    return[
      focClass(id: '01', chapters: 'Fundamentals of computers'),
      focClass(id: '02', chapters: 'Hardware and software'),
      focClass(id: '03', chapters: 'Basic computer literacy'),
      focClass(id: '04', chapters: 'Computers and communication'),
      focClass(id: '05', chapters: 'Application Domains'),
    ];
  }

}