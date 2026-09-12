import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key, required this.services});
  final List<String> services;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(t.doctorDetails.service, style: AppStyles.styleMedium18()),
        const SizedBox(height: 16),
        ...List.generate(
          services.length,
          (index) => Padding(
            padding: EdgeInsets.only(
              bottom: index < services.length - 1 ? 12 : 0,
            ),
            child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            '${index+1}.',
            style: AppStyles.styleMedium14(
              color: AppColors.colorGradientGreenStart,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            services[index],
            style: AppStyles.styleLight14(color: AppColors.colorSlateGray),
          ),
        ),
      ],
    ),
          ),
        ),
      ],
    );
  }


}
