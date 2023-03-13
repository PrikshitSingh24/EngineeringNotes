
class chemistryClass{
  String? id;
  String? chapters;

  chemistryClass({
    required this.id,
    required this.chapters,
  });
  static List<chemistryClass> chapterList(){
    return[
      chemistryClass(id: '01', chapters: 'Atomic and Molecular Structure'),
      chemistryClass(id: '02', chapters: 'Spectroscopic Techniques and Application'),
      chemistryClass(id: '03', chapters: 'Use of free energy in Chemical Equilibria'),
      chemistryClass(id: '04', chapters: 'Periodic Properties'),
      chemistryClass(id: '05', chapters: 'Organic Reaction and Synthesis of Drug molecule'),
    ];
  }
}