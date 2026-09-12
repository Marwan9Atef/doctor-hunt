import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/router/route_center.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/feature/Patient/home/presentation/widgets/popular_doctor_list.dart';
import 'package:flutter/material.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                context.t.home.PopularTitle,
                style: AppStyles.styleMedium18(),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  PatientBookRoute().push(context);
                },
                child: Text(
                  context.t.home.seeAll,
                  style: AppStyles.styleLight14(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          const PopularDoctorList(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
