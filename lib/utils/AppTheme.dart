import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medilab_prokit/utils/MLColors.dart';
import 'package:nb_utils/nb_utils.dart';

class AppThemeData {
  //
  AppThemeData._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true, // Enable Material 3
    scaffoldBackgroundColor: whiteColor,
    primaryColor: appColorPrimary,
    hoverColor: Colors.white54,
    dividerColor: viewLineColor,
    fontFamily: GoogleFonts.openSans().fontFamily,
    appBarTheme: const AppBarTheme(
      color: white,
      iconTheme: IconThemeData(color: textPrimaryColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
    colorScheme: ColorScheme.fromSeed(
      seedColor: appColorPrimary,
      brightness: Brightness.light,
      primary: appColorPrimary,
    ),
    cardTheme: const CardTheme(color: Colors.white),
    cardColor: Colors.white,
    iconTheme: const IconThemeData(color: textPrimaryColor),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: whiteColor),
    textTheme: TextTheme(
      labelLarge: TextStyle(color: appColorPrimary), // replaces button
      titleLarge: TextStyle(color: textPrimaryColor), // replaces headline6
      bodyMedium: TextStyle(color: textSecondaryColor), // replaces subtitle2
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: OpenUpwardsPageTransitionsBuilder(),
    }),
  );


  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: appBackgroundColorDark,
    highlightColor: appBackgroundColorDark,
    hoverColor: Colors.black12,
    dividerColor: const Color(0xFFDADADA).withOpacity(0.3),
    fontFamily: GoogleFonts.openSans().fontFamily,
    appBarTheme: const AppBarTheme(
      color: appBackgroundColorDark,
      iconTheme: IconThemeData(color: blackColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.white),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: appBackgroundColorDark),
    cardTheme: CardTheme(color: cardBackgroundBlackDark),
    cardColor: appSecondaryBackgroundColor,
    iconTheme: const IconThemeData(color: whiteColor),
    textTheme: TextTheme(
      labelLarge: TextStyle(color: color_primary_black), // replaces button
      titleLarge: TextStyle(color: whiteColor),          // replaces headline6
      bodyMedium: TextStyle(color: Colors.white54),      // replaces subtitle2
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.fromSeed(
      seedColor: appBackgroundColorDark,
      brightness: Brightness.dark,
      primary: color_primary_black,
      secondary: whiteColor,
      error: Color(0xFFCF6676),
    ),
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: OpenUpwardsPageTransitionsBuilder(),
    }),
  );

}
