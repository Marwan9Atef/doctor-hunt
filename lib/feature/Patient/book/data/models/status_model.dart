import 'package:doctor_hunt/core/i18n/strings.g.dart';

class StatusModel {
  final String title;
  final String description;
  const StatusModel({required this.description, required this.title});
  static final List<StatusModel> status = [
    StatusModel(description: t.doctorDetails.runing, title: "100"),
    StatusModel(description: t.doctorDetails.ongoing, title: "500"),
    StatusModel(description: t.doctorDetails.patient, title: "700"),
  ];
}
