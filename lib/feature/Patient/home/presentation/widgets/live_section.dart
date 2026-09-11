import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/theme/app_styles.dart';
import 'package:doctor_hunt/feature/Patient/home/presentation/widgets/live_cards.dart';
import 'package:flutter/material.dart';

class LiveSection extends StatelessWidget {
  const LiveSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(context.t.home.liveTitle, style: AppStyles.styleMedium18()),
          const LiveCards()
          
      
        ],
      ),
    );
  }
}