import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:flutter/material.dart';

class RuleModel {
  final String title;
  final String description;
  final String imagePath;
  const RuleModel({
    required this.description,
    required this.title,
    required this.imagePath,
  });
  static List<RuleModel> getRules(BuildContext context) => [
    RuleModel(
      description: t.auth.role.patient.description,
      title: t.auth.role.patient.title,
      imagePath: Assets.assetsImagesPatient,
    ),
    RuleModel(
      description: t.auth.role.admin.description,
      title: t.auth.role.admin.title,
      imagePath: Assets.assetsImagesAdmin,
    ),
  ];
}
