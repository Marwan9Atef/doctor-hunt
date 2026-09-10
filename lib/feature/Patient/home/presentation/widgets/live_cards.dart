import 'package:doctor_hunt/feature/Patient/home/presentation/widgets/live_card.dart';
import 'package:flutter/material.dart';

class LiveCards extends StatelessWidget {
  const LiveCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170, 
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const LiveCard(),
        itemCount: 4,
     
      ),
    );
  }
}
