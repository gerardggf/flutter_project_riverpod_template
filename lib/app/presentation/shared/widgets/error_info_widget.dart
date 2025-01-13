import 'package:flutter/material.dart';
import 'package:riverpod_template/app/core/utils/extensions/num_to_sizedbox.dart';
import '../../../core/generated/translations.g.dart';

class ErrorInfoWidget extends StatelessWidget {
  const ErrorInfoWidget({
    super.key,
    this.text,
    this.icon,
    this.color,
  });

  final String? text;
  final Widget? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ??
                Icon(
                  Icons.error_outline,
                  color: color,
                  size: 34,
                ),
            15.h,
            Text(
              text ?? texts.global.anErrorHasOccurred,
              style: TextStyle(
                color: color,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
