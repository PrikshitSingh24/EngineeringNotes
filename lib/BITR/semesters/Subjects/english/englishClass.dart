class englishClass{
  String? id;
  String? chapters;

  englishClass({
    required this.id,
    required this.chapters,
  });
  static List<englishClass> chapterList(){
    return[
      englishClass(id: '01', chapters: 'Report'),

    ];
  }
}