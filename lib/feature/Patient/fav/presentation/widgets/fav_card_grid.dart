import 'package:doctor_hunt/feature/Patient/fav/presentation/widgets/fav_card.dart';
import 'package:flutter/material.dart';

class FavCardGrid extends StatelessWidget {
  const FavCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
    
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15,childAspectRatio: 8/9),
      itemBuilder: (context, index) => FavCard(doctorName: "Marwan Atef", specialization: 'Specalist Cardiology',),
      itemCount: 8,
   
      
      
    );
  }
}