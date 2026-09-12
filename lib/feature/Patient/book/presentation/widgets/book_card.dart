import 'package:doctor_hunt/core/asset/app_assets.dart';
import 'package:doctor_hunt/core/router/route_center.dart';
import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/widgets/book_button.dart';
import 'package:doctor_hunt/feature/Patient/fav/presentation/widgets/fav_button.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppointmentRoute().push(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        decoration: ShapeDecoration(
          color: AppColors.colorWhite,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: [
            BoxShadow(
              color: AppColors.colorShadowBlack8,
              blurRadius: 20,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(
                    Assets.assetsImagesLive,
                    width: 92,
                    height: 92,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dr. Shruti Kedia", style: AppStyles.styleMedium18()),
                    const SizedBox(height: 4),
                    Text(
                      "Tooths Dentist",
                      style: AppStyles.styleRegular14().copyWith(
                        color: AppColors.colorGradientGreenEnd,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "7 Years experience",
                      style: AppStyles.styleRegular12(),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: ShapeDecoration(
                            color: AppColors.colorGradientGreenEnd,
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text("87%", style: AppStyles.styleLight10()),
                        const SizedBox(width: 12),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: ShapeDecoration(
                            color: AppColors.colorGradientGreenEnd,
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "69 Patient Stories",
                          style: AppStyles.styleLight10(),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Align(alignment: Alignment.topRight, child: const FavButton()),
              ],
            ),
            const SizedBox(height: 17),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Available",
                      style: AppStyles.styleRegular14().copyWith(
                        color: AppColors.colorGradientGreenEnd,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "10:00 AM tomorrow",
                      style: AppStyles.styleRegular14(),
                    ),
                  ],
                ),
                const Spacer(),
                const BookButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
