import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  String toHHmm({bool isPmAm = false}) {
    int formattedHour = hour % 12 == 0 ? 12 : hour % 12;
    return '${formattedHour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }

  String pmOrAm() {
    if (hour < 12) {
      return 'am';
    } else {
      return 'pm';
    }
  }
}
