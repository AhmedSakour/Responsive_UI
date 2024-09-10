import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) => TextStyle(
        color: const Color(0xFF064060),
        fontSize: AppStyles.getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleMedium16(context) => TextStyle(
        color: const Color(0xFF064060),
        fontSize: AppStyles.getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleSemiBold16(context) => TextStyle(
        color: const Color(0xFF064060),
        fontSize: AppStyles.getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBold20(context) => TextStyle(
        color: const Color(0xFF064060),
        fontSize: AppStyles.getResponsiveFontSize(context, fontSize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleRegular12(context) => TextStyle(
        color: const Color(0xFFAAAAAA),
        fontSize: AppStyles.getResponsiveFontSize(context, fontSize: 12),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleSemiBold24(context) => TextStyle(
        color: const Color(0xFF4DB7F2),
        fontSize: AppStyles.getResponsiveFontSize(context, fontSize: 24),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleRegular14(context) => TextStyle(
        color: const Color(0xFFAAAAAA),
        fontSize: AppStyles.getResponsiveFontSize(context, fontSize: 14),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleSemiBold18(context) => TextStyle(
        color: const Color(0xFF4EB7F2),
        fontSize: AppStyles.getResponsiveFontSize(context, fontSize: 18),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleBold16(context) => TextStyle(
        color: const Color(0xFF4EB7F2),
        fontSize: AppStyles.getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
      );
  static TextStyle styleMedium20(context) => TextStyle(
        color: Colors.white,
        fontSize: AppStyles.getResponsiveFontSize(context, fontSize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );

  static double getResponsiveFontSize(context, {required double fontSize}) {
    double scaleFactor = AppStyles.getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerlimit = fontSize * .8;
    double upperlimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerlimit, upperlimit);
  }

  static double getScaleFactor(context) {
    double width = MediaQuery.of(context).size.width;
    if (width < SizeConfig.tablet) {
      return width / 768;
    } else if (width < SizeConfig.desktop) {
      return width / 1000;
    } else {
      return width / 1920;
    }
  }
}
