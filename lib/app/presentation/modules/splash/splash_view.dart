import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_template/app/core/extensions/num_to_sizedbox.dart';
import 'package:riverpod_template/app/core/extensions/theme_mode_extension.dart';
import 'package:riverpod_template/app/presentation/modules/home/home_view.dart';

import '../../../core/constants/assets.dart';
import '../../../core/constants/colors.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({
    super.key,
    this.error,
  });

  final String? error;

  static const String routeName = 'splash';

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        return context.goNamed(HomeView.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.2,
              ),
              child: Column(
                children: [
                  Image.asset(
                    Assets.icon,
                  ),
                  30.h,
                  if (widget.error != null)
                    Text(
                      widget.error!,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    )
                  else
                    CircularProgressIndicator(
                      color:
                          context.isDarkMode ? AppColors.dark : AppColors.light,
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
