import 'package:doctor_hunt/core/di/service_locator.dart';
import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/doctor_hunt.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await configureDependencies();
  LocaleSettings.useDeviceLocale();
  runApp(const DoctorHunt());
}
