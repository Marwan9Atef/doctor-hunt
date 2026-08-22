import 'package:doctor_hunt/feature/home/presentation/widgets/home_header.dart';
import 'package:doctor_hunt/feature/home/presentation/widgets/live_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
     const HomeHeader(),
     const SizedBox(height: 32,),
     const LiveSection()
     

      ],
    );
  }
}
