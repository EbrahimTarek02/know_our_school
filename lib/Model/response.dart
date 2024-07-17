class Response {
  String? schoolName;
  String? schoolAddress;
  String? numberOfStudents;
  String? numberOfTeachers;

  Response({
    this.schoolName,
    this.schoolAddress,
    this.numberOfStudents,
    this.numberOfTeachers,
  });

  Response.fromJson(Map<String, dynamic> json) {
    schoolName = json['School Name'];
    schoolAddress = json['School Address'];
    numberOfStudents = json['Number of Students'];
    numberOfTeachers = json['Number of Teachers'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['School Name'] = schoolName;
    map['School Address'] = schoolAddress;
    map['Number of Students'] = numberOfStudents;
    map['Number of Teachers'] = numberOfTeachers;
    return map;
  }
}