import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/feature/Patient/book/data/models/status_model.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({super.key ,required this.status});
  final StatusModel status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 28),
      decoration: ShapeDecoration(
        color: const Color(0xFFCACACA).withValues(alpha: 0.12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Column(
        children: [
          Text(status.title,style: AppStyles.styleMedium18(),),
          const SizedBox(height: 4,),
          Text(status.description,style: AppStyles.styleLight14(),)




      ],
      ),
    );
  }
}
