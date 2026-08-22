import 'dart:ui';

import 'package:doctor_hunt/core/theme/size_config.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'font_owner.dart';

abstract class AppStyles {
    // Medium 28 - Section titles, doctor names in list cards
  static TextStyle styleMedium28({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorDarkCharcoal,
      fontSize: getResponsiveFontSize(fontSize: 28),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.3,
    );
  }
  // Medium 18 - Section titles, doctor names in list cards
  static TextStyle styleMedium18({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorDarkCharcoal,
      fontSize: getResponsiveFontSize(fontSize: 18),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.3,
    );
  }

  // Medium 14 - Doctor names in popular-doctor cards
  static TextStyle styleMedium14({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorBlack,
      fontSize: getResponsiveFontSize(fontSize: 14),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.3,
    );
  }

  // Light 14 - Specialty subtitle in list cards
  static TextStyle styleLight14({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorSlateGray,
      fontSize: getResponsiveFontSize(fontSize: 14),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w300,
    );
  }

  // Light 10 - "See all" link, card subtitle
  static TextStyle styleLight10({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorSlateGray,
      fontSize: getResponsiveFontSize(fontSize: 10),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.3,
    );
  }

  // Medium 16 - Rating number
  static TextStyle styleMedium16({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorDarkCharcoal,
      fontSize: getResponsiveFontSize(fontSize: 16),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w500,
    );
  }

  // Regular 16 - Parentheses around review count
  static TextStyle styleRegular16({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorSlateGrayMuted,
      fontSize: getResponsiveFontSize(fontSize: 16),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w400,
    );
  }

  // Regular 14 - Spacer in rating line
  static TextStyle styleRegular14({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorSlateGrayMuted,
      fontSize: getResponsiveFontSize(fontSize: 14),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w400,
    );
  }

  // Regular 12 - Review count number, "views" label
  static TextStyle styleRegular12({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorSlateGrayMuted,
      fontSize: getResponsiveFontSize(fontSize: 12),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w400,
    );
  }

  // Medium 14 Status Bar - Status bar clock
  static TextStyle styleMedium14StatusBar({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorEerieBlack,
      fontSize: getResponsiveFontSize(fontSize: 14),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.3,
    );
  }

  // Bold 14 Status Bar - Alternative status bar clock
  static TextStyle styleBold14StatusBar({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorEerieBlack,
      fontSize: getResponsiveFontSize(fontSize: 14),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w700,
    );
  }

  // Bold 18 - Header "Appointment"
  static TextStyle styleBold18({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorDarkCharcoal,
      fontSize: getResponsiveFontSize(fontSize: 18),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w700,
    );
  }

  // Regular 15 - Calendar day/date numbers
  static TextStyle styleRegular15({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorBlack,
      fontSize: getResponsiveFontSize(fontSize: 15),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w400,
    );
  }

  // Display - 32 / w800
  static TextStyle styleExtraBold32({Color? color}) {
    return TextStyle(
      color: color ?? AppColors.colorBlack,
      fontSize: getResponsiveFontSize(fontSize: 32),
      fontFamily: FontOwner.rubik,
      fontWeight: FontWeight.w800,
    );
  }


 
}

double getResponsiveFontSize({required double fontSize}) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;

  double width = physicalWidth / devicePixelRatio;

  if (width < SizeConfig.tablet) {
    return width / 420;
  } else if (width < SizeConfig.desktop) {
    return width / 870;
  } else {
    return width / 1790;
  }
}
