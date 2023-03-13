
class ppsClass{
  String? id;
  String? chapters;

  ppsClass({
    required this.id,
    required this.chapters,
  });
  static List<ppsClass> chapterList(){
    return[
      ppsClass(id: '01', chapters: 'Chapter One'),
      ppsClass(id: '02', chapters: 'Chapter Two'),
      ppsClass(id: '03', chapters: 'Chapter Three'),
      ppsClass(id: '04', chapters: 'Chapter Four'),
      ppsClass(id: '05', chapters: 'Chapter Five'),
    ];
  }
}