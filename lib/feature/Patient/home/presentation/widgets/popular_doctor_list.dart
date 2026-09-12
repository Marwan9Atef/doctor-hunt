import 'package:doctor_hunt/feature/Patient/home/presentation/widgets/popular_doctor_card.dart';
import 'package:flutter/material.dart';

class PopularDoctorList extends StatelessWidget {
  const PopularDoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            PopularDoctorCard(doctorName: "Marwan", specialization: "Oral"),
        itemCount: 6,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
      ),
    );
  }
}
