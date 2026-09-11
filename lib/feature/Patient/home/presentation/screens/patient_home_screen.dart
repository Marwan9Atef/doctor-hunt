import 'package:doctor_hunt/feature/Patient/home/presentation/widgets/home_header.dart';
import 'package:doctor_hunt/feature/Patient/home/presentation/widgets/live_section.dart';
import 'package:doctor_hunt/feature/Patient/home/presentation/widgets/popular_section.dart';
import 'package:doctor_hunt/feature/Patient/home/presentation/widgets/specialty_list.dart';
import 'package:flutter/material.dart';

class PatientHomeScreen extends StatelessWidget {
  const PatientHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: const HomeHeader()),
        SliverToBoxAdapter(child: const LiveSection()),
        const SliverToBoxAdapter(child: SizedBox(height: 30)),
        SliverToBoxAdapter(child: const SpecialtyList()),
        const SliverToBoxAdapter(child: SizedBox(height: 30)),
        SliverToBoxAdapter(child: const PopularSection()),
      ],
    );
  }
}
