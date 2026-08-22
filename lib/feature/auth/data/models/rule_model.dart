import 'package:doctor_hunt/core/asset/app_assets.dart';

class RuleModel {
  final String title;
  final String description;
  final String imagePath;
  const RuleModel({
    required this.description,
    required this.title,
    required this.imagePath,
  });
  static final List<RuleModel> rules =[
RuleModel(description: "Find doctors, book appointments,and manage your medical records.", title: "Patient", imagePath: Assets.assetsImagesPatient),
RuleModel(description: "Manage doctors, appointments,users, and the platform.", title: "Admin", imagePath: Assets.assetsImagesAdmin)

];
}
