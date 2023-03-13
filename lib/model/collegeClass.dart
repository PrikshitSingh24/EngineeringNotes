class collegeClass{
  String? id;
  String? collegeName;
  String? names;

  collegeClass({
   required this.id,
   required this.collegeName,
    required this.names,
});
  static List<collegeClass> tolist(){
    return[
      collegeClass(id: '01', collegeName: 'assets/colleges/BITDURG.jpg',names:'Bhilai institute of technology durg'),
      collegeClass(id: '02', collegeName: 'assets/colleges/BITR.jpg',names: 'Bhilai institute of technology raipur'),
      collegeClass(id: '03', collegeName: 'assets/colleges/NIT-Raipur-Logo.webp',names:'National institute of technology Raipur'),
      collegeClass(id: '04', collegeName: 'assets/colleges/SHANKARA.jpg',names: 'Shankara Charaya'),
      collegeClass(id: '05', collegeName: 'assets/colleges/Kalinga.jpg',names:'Kalinga University'),
      collegeClass(id: '06', collegeName: 'assets/colleges/ITM.jpeg',names: 'ITM'),
    ];
  }
}