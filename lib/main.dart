import 'package:doctor_hunt/core/i18n/strings.g.dart';
import 'package:doctor_hunt/doctor_hunt.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  runApp(const DoctorHunt());
}
