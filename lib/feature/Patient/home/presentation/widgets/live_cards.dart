import 'package:doctor_hunt/feature/Patient/home/presentation/widgets/live_card.dart';
import 'package:flutter/material.dart';

class LiveCards extends StatelessWidget {
  const LiveCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170, 
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
          shrinkWrap: true, 
        itemBuilder: (context, index) => const LiveCard(),
        itemCount: 4,
     
      ),
    );
  }
}
