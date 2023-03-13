class semesterClass{
  String? id;
  String? semesterName;
  String? branch;

  semesterClass({
   required this.id,
    required this.semesterName,
    required this.branch,
});

  static List<semesterClass> semesterToList(){
    return [
      semesterClass(id: '01', semesterName:"assets/branches/chachachodrhi_civil_engineer_making_bridge_animated_0ce2fb3e-03d4-4ea7-8ca9-12adf3f6e86b.png",branch: 'Civil Engineering'),
      semesterClass(id: '02', semesterName:"assets/branches/chachachodrhi_computer_science_engineering_siting_on_table_and__40af8ce9-51a7-4035-ae0d-37ae680617e5 (1).png",branch:'Computer Science'),
      semesterClass(id: '01', semesterName:'assets/branches/chachachodrhi_mechanical_engineer_working_on_a_car_animated_455eca6c-53d9-4e22-b2df-a8fa8c97dad9 (1).png',branch: 'Mechanical Engineering'),
      semesterClass(id: '01', semesterName:'assets/branches/chachachodrhi_electrical_engineer_working_at_station_animated_6ec3286b-2461-4930-85a5-a52236059530.png',branch: 'Electrical Engineering'),
      semesterClass(id: '01', semesterName:'assets/branches/chachachodrhi_electronics_and_telecommunication_engineer_workin_63fc7271-eb13-46c6-91aa-b5d7c0021f9c.png',branch: 'Electronics and communication'),

    ];
  }
}
class semesterWindowClass{
  String? id;
  String? semesters;

  semesterWindowClass({
   required this.id,
    required this.semesters,
});

  static List<semesterWindowClass> semesterNames(){
    return[
      semesterWindowClass(id: '01',semesters: 'Semester 01'),
      semesterWindowClass(id: '02',semesters: 'Semester 02'),
      semesterWindowClass(id: '03',semesters: 'Semester 03'),
      semesterWindowClass(id: '04',semesters: 'Semester 04'),
      semesterWindowClass(id: '05',semesters: 'Semester 05'),
      semesterWindowClass(id: '06',semesters: 'Semester 06'),
      semesterWindowClass(id: '07',semesters: 'Semester 07'),
      semesterWindowClass(id: '08',semesters: 'Semester 08'),

    ];
  }
}