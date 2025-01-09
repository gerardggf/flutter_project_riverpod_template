import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_template/app/core/constants/assets.dart';
import 'package:riverpod_template/app/presentation/modules/profile/profile_view.dart';
import 'package:riverpod_template/app/presentation/modules/sign-in/sign_in_view.dart';

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
      GoRoute(
        name: SignInView.routeName,
        path: '/sign-in',
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        name: ProfileView.routeName,
        path: '/profile',
        builder: (context, state) => const ProfileView(),
      ),
    ],
    // redirect: (context, state) {
    //   return '/sign-in';
    // },
  );
}
