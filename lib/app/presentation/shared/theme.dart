import 'package:flutter/material.dart';
import 'package:riverpod_template/app/core/extensions/theme_mode_extension.dart';
import '../../core/constants/colors.dart';

class AppTheme {
  static ThemeData getTheme(bool isDarkMode) =>
      isDarkMode ? darkTheme : lightTeme;

  static final ThemeData lightTeme = ThemeData(
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: AppColors.lightBg),
    drawerTheme: const DrawerThemeData(backgroundColor: AppColors.lightBg),
    scaffoldBackgroundColor: AppColors.lightBg,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.light),
      backgroundColor: AppColors.lightBg,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.lightSec,
        fontSize: 26,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: AppColors.lightSec.withAlpha(102),
      selectionHandleColor: AppColors.lightSec,
    ),
    timePickerTheme: TimePickerThemeData(
      dialBackgroundColor: AppColors.light.withAlpha(102),
      dialHandColor: AppColors.light,
      hourMinuteColor: AppColors.light.withAlpha(102),
      cancelButtonStyle: const ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            color: AppColors.lightSec,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      confirmButtonStyle: const ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            color: AppColors.lightSec,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.lightBg,
    ),
    datePickerTheme: const DatePickerThemeData(
      cancelButtonStyle: ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            color: AppColors.lightSec,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      confirmButtonStyle: ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            color: AppColors.lightSec,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.lightBg,
    ),
    dialogTheme: const DialogTheme(
      iconColor: AppColors.lightSec,
      contentTextStyle: TextStyle(color: AppColors.lightSec),
    ),
    dialogBackgroundColor: AppColors.lightBg,
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: const TextStyle(color: AppColors.light),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightSec),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightSec),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightSec),
        ),
      ),
      menuStyle: MenuStyle(
        backgroundColor: const WidgetStatePropertyAll(AppColors.lightBg),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        elevation: const WidgetStatePropertyAll(0),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.light),
      ),
      labelStyle: TextStyle(
        color: AppColors.lightSec.withAlpha(102),
      ),
      hintStyle: TextStyle(
        color: AppColors.lightSec.withAlpha(102),
      ),
    ),
    iconTheme: const IconThemeData(color: AppColors.lightSec),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColors.lightSec,
      ),
    ),
    textTheme: const TextTheme(
      labelSmall: TextStyle(
        color: AppColors.light,
        fontSize: 11,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(color: AppColors.lightSec),
      bodyLarge: TextStyle(color: AppColors.lightSec),
      bodyMedium: TextStyle(color: AppColors.lightSec),
      labelLarge: TextStyle(color: AppColors.lightSec),
      headlineSmall: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColors.lightSec),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColors.lightSec),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.light,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: AppColors.lightSec,
      titleTextStyle: TextStyle(
        fontSize: 14,
        color: AppColors.lightSec,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.light;
          }
          return AppColors.lightBg;
        },
      ),
      trackOutlineColor: const WidgetStatePropertyAll(AppColors.light),
      trackColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.lightBg;
          }
          return AppColors.light;
        },
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: AppColors.darkBg),
    drawerTheme: const DrawerThemeData(backgroundColor: AppColors.darkBg),
    scaffoldBackgroundColor: AppColors.darkBg,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.dark),
      backgroundColor: AppColors.darkBg,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.darkSec,
        fontSize: 26,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: AppColors.darkSec.withAlpha(102),
      selectionHandleColor: AppColors.darkSec,
    ),
    timePickerTheme: TimePickerThemeData(
      dialBackgroundColor: AppColors.dark.withAlpha(102),
      dialHandColor: AppColors.dark,
      hourMinuteColor: AppColors.dark.withAlpha(102),
      cancelButtonStyle: const ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            color: AppColors.darkSec,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      confirmButtonStyle: const ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            color: AppColors.darkSec,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.darkBg,
    ),
    datePickerTheme: const DatePickerThemeData(
      cancelButtonStyle: ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            color: AppColors.darkSec,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      confirmButtonStyle: ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            color: AppColors.darkSec,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.darkBg,
    ),
    dialogTheme: const DialogTheme(
      iconColor: AppColors.darkSec,
      contentTextStyle: TextStyle(color: AppColors.darkSec),
    ),
    dialogBackgroundColor: AppColors.darkBg,
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: const TextStyle(color: AppColors.dark),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkSec),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkSec),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkSec),
        ),
      ),
      menuStyle: MenuStyle(
        backgroundColor: const WidgetStatePropertyAll(AppColors.darkBg),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        elevation: const WidgetStatePropertyAll(0),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.dark),
      ),
      labelStyle: TextStyle(
        color: AppColors.darkSec.withAlpha(102),
      ),
      hintStyle: TextStyle(
        color: AppColors.darkSec.withAlpha(102),
      ),
    ),
    iconTheme: const IconThemeData(color: AppColors.darkSec),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColors.darkSec,
      ),
    ),
    textTheme: const TextTheme(
      labelSmall: TextStyle(
        color: AppColors.dark,
        fontSize: 11,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(color: AppColors.darkSec),
      bodyLarge: TextStyle(color: AppColors.darkSec),
      bodyMedium: TextStyle(color: AppColors.darkSec),
      labelLarge: TextStyle(color: AppColors.darkSec),
      headlineSmall: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColors.darkSec),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: AppColors.darkSec),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.dark,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: AppColors.darkSec,
      titleTextStyle: TextStyle(
        fontSize: 14,
        color: AppColors.darkSec,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.dark;
          }
          return AppColors.darkBg;
        },
      ),
      trackOutlineColor: const WidgetStatePropertyAll(AppColors.light),
      trackColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.darkBg;
          }
          return AppColors.dark;
        },
      ),
    ),
  );
}
