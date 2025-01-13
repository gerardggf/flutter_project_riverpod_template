import 'package:flutter/material.dart';
import 'package:riverpod_template/app/core/utils/extensions/num_to_sizedbox.dart';

import '../../../core/constants/assets.dart';

class SplashView extends StatelessWidget {
  const SplashView({
    super.key,
    this.error,
  });

  final String? error;

  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.3,
              ),
              child: Column(
                children: [
                  Image.asset(
                    Assets.icon,
                  ),
                  30.h,
                  if (error != null)
                    Text(
                      error!,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
