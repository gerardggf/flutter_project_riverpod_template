import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';

class AppTheme {
  static ThemeData getTheme(bool isDarkMode) =>
      isDarkMode ? darkTheme : lightTeme;

  // Light theme  ---------------------------------------------------------------------------------------------

  static final ThemeData lightTeme = ThemeData.light().copyWith(
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
        selectionColor: AppColors.light.withAlpha(102),
        selectionHandleColor: AppColors.light,
        cursorColor: AppColors.light),
    timePickerTheme: TimePickerThemeData(
      entryModeIconColor: AppColors.lightSec,
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
    datePickerTheme: DatePickerThemeData(
      todayBorder: const BorderSide(color: AppColors.light),
      yearStyle: const TextStyle(color: AppColors.lightSec),
      yearForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.lightBg;
        }
        return AppColors.lightSec;
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.lightBg;
        }
        return AppColors.lightSec;
      }),
      yearBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.light;
        }
        return AppColors.lightBg;
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.light;
        }
        return Colors.transparent;
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.light;
        }
        return Colors.transparent;
      }),
      cancelButtonStyle: TextButton.styleFrom(
        textStyle: const TextStyle(
          color: AppColors.lightSec,
          fontWeight: FontWeight.bold,
        ),
      ),
      confirmButtonStyle: TextButton.styleFrom(
        textStyle: const TextStyle(
          color: AppColors.lightSec,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: AppColors.lightBg,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.light,
      linearTrackColor: AppColors.light.withAlpha(90),
    ),
    dialogTheme: const DialogTheme(
      iconColor: AppColors.lightSec,
      contentTextStyle: TextStyle(color: AppColors.lightSec),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.light,
        foregroundColor: AppColors.lightBg,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    dialogBackgroundColor: AppColors.lightBg,
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: const TextStyle(color: AppColors.light),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.light),
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
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.lightBg,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.light),
      ),
      labelStyle: TextStyle(
        color: AppColors.lightSec.withAlpha(140),
      ),
      hintStyle: TextStyle(
        color: AppColors.lightSec.withAlpha(140),
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
            return AppColors.lightBg;
          }
          return AppColors.light;
        },
      ),
      trackOutlineColor: const WidgetStatePropertyAll(AppColors.light),
      trackColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.light;
          }
          return AppColors.lightBg;
        },
      ),
    ),
  );

  //----------------------------------------------------------------------------------------------------------

  // Dark theme  ---------------------------------------------------------------------------------------------

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
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
        cursorColor: AppColors.darkSec),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.darkSec,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    timePickerTheme: TimePickerThemeData(
      entryModeIconColor: AppColors.darkSec,
      dialBackgroundColor: AppColors.dark.withAlpha(102),
      dialHandColor: AppColors.dark,
      hourMinuteColor: AppColors.dark.withAlpha(102),
      hourMinuteTextColor: AppColors.darkSec,
      cancelButtonStyle: const ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            color: AppColors.darkSec,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      dialTextColor: AppColors.darkSec,
      helpTextStyle: const TextStyle(color: AppColors.darkSec),
      dialTextStyle: const TextStyle(color: AppColors.darkSec),
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
    datePickerTheme: DatePickerThemeData(
      yearOverlayColor: const WidgetStatePropertyAll(AppColors.darkSec),
      yearStyle: const TextStyle(color: AppColors.darkSec),
      yearForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.dark;
        }
        return AppColors.darkSec;
      }),
      yearBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.darkSec;
        }
        return AppColors.darkBg;
      }),
      headerForegroundColor: AppColors.darkSec,
      headerHelpStyle: const TextStyle(color: AppColors.darkSec),
      headerHeadlineStyle: const TextStyle(color: AppColors.darkSec),
      todayBorder: const BorderSide(color: AppColors.darkSec),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.darkSec;
        }
        return Colors.transparent;
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.darkSec;
        }
        return Colors.transparent;
      }),
      weekdayStyle: const TextStyle(
        color: AppColors.darkSec,
        fontWeight: FontWeight.bold,
      ),
      dayStyle: const TextStyle(color: AppColors.darkSec),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.dark;
        }
        return AppColors.darkSec;
      }),
      todayForegroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.dark;
        }
        return AppColors.darkSec;
      }),
      cancelButtonStyle: TextButton.styleFrom(
        textStyle: const TextStyle(
          color: AppColors.darkSec,
          fontWeight: FontWeight.bold,
        ),
      ),
      confirmButtonStyle: TextButton.styleFrom(
        textStyle: const TextStyle(
          color: AppColors.darkSec,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: AppColors.darkBg,
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.darkBg,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    dialogTheme: const DialogTheme(
      iconColor: AppColors.darkSec,
      contentTextStyle: TextStyle(color: AppColors.darkSec),
    ),
    dialogBackgroundColor: AppColors.darkBg,
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: const TextStyle(color: AppColors.darkSec),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.darkSec.withAlpha(140),
          ),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.darkSec.withAlpha(140),
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.darkSec.withAlpha(140),
          ),
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
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.darkSec.withAlpha(140),
        ),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.darkSec.withAlpha(140),
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.darkSec.withAlpha(140),
        ),
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
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkSec,
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
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.darkSec,
      circularTrackColor: AppColors.darkSec,
      linearTrackColor: AppColors.darkSec.withAlpha(90),
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
      trackOutlineColor: const WidgetStatePropertyAll(AppColors.darkSec),
      trackColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.darkSec;
          }
          return AppColors.dark;
        },
      ),
    ),
  );
}
