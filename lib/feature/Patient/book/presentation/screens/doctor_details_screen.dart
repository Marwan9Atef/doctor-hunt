import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/doctor_details_card.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/doctor_loaction.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/doctor_status.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/service_widget.dart';
import 'package:flutter/material.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.t.doctorDetails.doctorDetailsTitle)),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
        child: Column(
          children: [
            const DoctorDetailsCard(),
            const SizedBox(height: 25),
            const DoctorStatus(),
            const SizedBox(height: 25),
            ServiceWidget(
              services: const [
                'Patient care should be the number one priority.',
                'If you run your practice you know how frustrating.',
                "That's why some of appointment reminder system.",
              ],
            ),
            const SizedBox(height: 25),
           const DoctorLoaction()
          ],
        ),
      ),
    );
  }
}
