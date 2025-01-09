import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_template/app/core/constants/assets.dart';

import '../../core/constants/colors.dart';
import '../../core/generated/translations.g.dart';
import '../../my_app.dart';
import '../global_widgets/error_info_widget.dart';
import '../modules/home/home_view.dart';
import '../modules/splash/splash_view.dart';

mixin RoutesMixin on State<MyApp> {
  final router = GoRouter(
    errorBuilder: (context, state) => ErrorInfoWidget(
      text: texts.global.pageNotFound,
      color: AppColors.error,
      icon: Image.asset(Assets.icon),
    ),
    initialLocation: '/splash',
    routes: [
      GoRoute(
        name: SplashView.routeName,
        path: '/splash',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        name: HomeView.routeName,
        path: '/home',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
