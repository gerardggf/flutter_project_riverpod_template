import 'package:flutter/widgets.dart';

extension IntToSizedBoxExtension on int {
  SizedBox get h => SizedBox(
        height: toDouble(),
      );
  SizedBox get w => SizedBox(
        width: toDouble(),
      );
}

extension DoubleToSizedBox on double {
  SizedBox get h => SizedBox(
        height: this,
      );
  SizedBox get w => SizedBox(width: this);
}
