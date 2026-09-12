import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/available_time_section.dart';

import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/calender_widget.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.book.appointmentTitle),
      ),
      body: Padding(
           padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(
          children: [
            const CalenderWidget(),
            const SizedBox(height: 8,),
           const AvailableTimeSection(),
          

            
          ],
        ),
      ),
    );
  }
}