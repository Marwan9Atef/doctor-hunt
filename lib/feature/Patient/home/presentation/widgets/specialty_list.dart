import 'package:doctor_hunt/feature/Patient/home/data/models/specialty_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialtyList extends StatelessWidget {
  const SpecialtyList({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
          padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
          shrinkWrap: true, 
        itemBuilder: (context, index) => SvgPicture.asset(SpecialtyModel.specialtyList[index].imagePath),
        itemCount: SpecialtyModel.specialtyList.length,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
      ),
    );
  }
}