import 'package:doctor_hunt/core/router/app_router.dart';
import 'package:flutter/material.dart';

class DoctorHunt extends StatelessWidget {
  const DoctorHunt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "DoctorHunt",
      routerConfig: AppRouter.routes,


    );
  }
}