import 'package:doctor_hunt/core/i18n/strings.g.dart';

class AdminInfoModel {
  final String title;
  final String info;
  const AdminInfoModel({required this.title,required this.info});
static  final List<AdminInfoModel>adminInfo=[
AdminInfoModel(title: t.home.adminInfo.activeDoctors, info: "4"),
AdminInfoModel(title: t.home.adminInfo.totalDoctors, info: "6")

];




}