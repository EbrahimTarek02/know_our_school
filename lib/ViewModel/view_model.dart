import 'package:flutter/widgets.dart';
import 'package:know_our_school/Model/model.dart';
import 'package:know_our_school/Model/response.dart';

class ViewModel extends ChangeNotifier {
  String schoolName = "School Name";
  String schoolAddress = "School Address";
  String studentsNo = "Number of Students";
  String teachersNo = "Number of Teachers";
  Model model;

  ViewModel(this.model);

  void getData() async{
    Response response = await model.readJson();

    schoolName = response.schoolName ?? "";
    schoolAddress = response.schoolAddress ?? "";
    studentsNo = response.numberOfStudents ?? "";
    teachersNo = response.numberOfTeachers ?? "";

    notifyListeners();
  }
}