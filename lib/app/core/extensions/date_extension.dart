extension DateFunctions on DateTime {
  String toDDMMYYYY() {
    return '${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}/${year.toString().padLeft(4, '0')}';
  }

  String toMMDDYYYY() {
    return '${month.toString().padLeft(2, '0')}/${day.toString().padLeft(2, '0')}/${year.toString().padLeft(4, '0')}';
  }

  String toHHmm({bool isPmAm = false}) {
    if (isPmAm) {
      int formattedHour = hour % 12 == 0 ? 12 : hour % 12;
      return '${formattedHour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')} ${pmOrAm()}';
    }
    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }

  String pmOrAm() {
    if (hour < 12) {
      return 'am';
    } else {
      return 'pm';
    }
  }

  DateTime get yearMonthDay {
    return DateTime(year, month, day);
  }

  DateTime get yearMonth {
    return DateTime(year, month);
  }
}
