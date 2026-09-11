import 'package:doctor_hunt/core/asset/app_assets.dart';


class SpecialtyModel {
  final String imagePath;
  const SpecialtyModel({required this.imagePath});
  static final List<SpecialtyModel> specialtyList = [
    SpecialtyModel(imagePath: Assets.assetsImagesDentist),
    SpecialtyModel(imagePath: Assets.assetsImagesEye),
    SpecialtyModel(imagePath: Assets.assetsImagesInternist),
    SpecialtyModel(imagePath: Assets.assetsImagesHeart),
  ];
}
