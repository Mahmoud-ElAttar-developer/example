import 'package:example/Core/Utiles/app_colors.dart';
import 'package:example/Core/Utiles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


// Light Theme---------------------------------------------

final lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.scaffoldBgrwhite,
  primaryColor: AppColors.whiteColor,
  canvasColor: AppColors.blackColor,
  highlightColor: AppColors.whiteColor,
  cardColor: const Color.fromARGB(255, 156, 201, 21),

  // TEXT STYLES
  textTheme: TextTheme(
    displayLarge: getTitleStyle(color: const Color.fromARGB(255, 80, 101, 15)),
    displayMedium: getbodyStyle(color: const Color.fromARGB(255, 102, 132, 13)),
    displaySmall: getSmallStyle(color: const Color.fromARGB(255, 120, 150, 30)),
  ),
  brightness: Brightness.light,

  // APP BAR
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    titleTextStyle: getTitleStyle(color: AppColors.lemonadacolor),
    iconTheme: IconThemeData(color: AppColors.lemonadacolor),
    backgroundColor: Colors.transparent,
    foregroundColor: AppColors.lemonadacolor,
    centerTitle: true,
    elevation: 0,
  ),

  // BOTTOM NAV BAR
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.all(AppColors.lemonadacolor),
    trackColor: WidgetStateProperty.all(AppColors.whiteColor),
  ),

  // INPUT DECORATION
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: getbodyStyle(color: AppColors.lemonadacolor),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: AppColors.lemonadacolor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: AppColors.lemonadacolor),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: AppColors.redColor),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: AppColors.redColor),
    ),
  ),
  fontFamily: GoogleFonts.poppins().fontFamily,
);

// Dark Theme---------------------------------------------

final darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.lemonadacolor,
  primaryColor: AppColors.blackColor,
  canvasColor: AppColors.whiteColor,
  highlightColor: const Color.fromARGB(255, 100, 130, 10),
  cardColor: const Color.fromARGB(255, 156, 201, 21),

  // TEXT STYLES
  textTheme: TextTheme(
    displayLarge: getTitleStyle(color: AppColors.whiteColor),
    displayMedium: getbodyStyle(color: AppColors.whiteColor),
    displaySmall: getSmallStyle(color: AppColors.whiteColor),
  ),
  brightness: Brightness.dark,

  // APP BAR
  appBarTheme: AppBarTheme(
    titleTextStyle: getTitleStyle(),
    iconTheme: IconThemeData(color: AppColors.whiteColor),
    backgroundColor: Colors.transparent,
    centerTitle: true,
    elevation: 0,
  ),

  // BOTTOM NAV BAR
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.all(AppColors.whiteColor),
    trackColor: WidgetStateProperty.all(AppColors.lemonadacolor),
  ),

  // INPUT DECORATION
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: getbodyStyle(color: AppColors.whiteColor),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: AppColors.whiteColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: AppColors.whiteColor),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: AppColors.redColor),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: AppColors.redColor),
    ),
  ),
  fontFamily: GoogleFonts.poppins().fontFamily,
);
