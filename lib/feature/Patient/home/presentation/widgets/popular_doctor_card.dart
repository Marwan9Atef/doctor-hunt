import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/router/route_center.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/star_widget.dart';
import 'package:flutter/material.dart';

class PopularDoctorCard extends StatelessWidget {
  final String doctorName;
  final String specialization;
  final int rating;
  final String? imageUrl;

  const PopularDoctorCard({
    super.key,
    required this.doctorName,
    required this.specialization,
    this.rating = 4,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        DoctorDetailsRoute().push(context);
      },
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.colorWhite,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.colorShadowBlack8,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: Image.asset(
                imageUrl ?? Assets.assetsImagesLive,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(doctorName, style: AppStyles.styleMedium18()),
                  const SizedBox(height: 4),
                  Text(specialization, style: AppStyles.styleLight14()),
                  const SizedBox(height: 12),
                  Row(
                    children: List.generate(
                      5,
                      (index) => StarWidget(filled: index < rating),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
