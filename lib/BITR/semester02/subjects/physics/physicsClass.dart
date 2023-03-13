class physicsClass{
  String? id;
  String? chapters;

  physicsClass({
    required this.id,
    required this.chapters,
});

  static List<physicsClass> chaptersList(){

    return[
      physicsClass(id: '01', chapters: 'Physical quantities,Motion in two and three dimensions'),
      physicsClass(id: '02', chapters: 'Introduction to quantum mechanics'),
      physicsClass(id: '03', chapters: 'Solid electronic materials'),
      physicsClass(id: '04', chapters: 'Semiconductors'),
      physicsClass(id: '05', chapters: 'Lasers and fibre optics'),
    ];
  }

}