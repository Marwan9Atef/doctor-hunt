import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/core/widgets/custom_search_bar.dart';
import 'package:doctor_hunt/feature/Patient/fav/presentation/widgets/fav_card_grid.dart';
import 'package:flutter/material.dart';

class PatientFavScreen extends StatelessWidget {
  const PatientFavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.t.fav.favTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32 ,horizontal: 20),
        child: Column(
          children: [
            const CustomSearchBar(),
            const SizedBox(height: 24,),
             Expanded(child: FavCardGrid())
          
            
            
          ],
        ),
      ),
    );
  }
}
