import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_template/app/core/constants/assets.dart';
import 'package:riverpod_template/app/domain/models/user_model.dart';
import 'package:riverpod_template/app/presentation/modules/profile/profile_view.dart';
import 'package:riverpod_template/app/presentation/modules/sign-in/sign_in_view.dart';
import 'package:riverpod_template/app/presentation/shared/controllers/session_controller.dart';

import '../../core/generated/translations.g.dart';
import '../shared/widgets/error_info_widget.dart';
import '../modules/home/home_view.dart';
import '../modules/splash/splash_view.dart';

final userLoaderFutureProvider = FutureProvider<UserModel?>((ref) async {
  return await ref.read(sessionControllerProvider.notifier).loadRemoteUser();
});

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final userLoaderState = ref.watch(userLoaderFutureProvider);
    final userAuthState = ref.watch(sessionControllerProvider);
    return GoRouter(
      errorBuilder: (context, state) => Scaffold(
        body: ErrorInfoWidget(
          text: texts.global.pageNotFound,
          icon: Image.asset(
            Assets.icon,
            width: 50,
            height: 50,
          ),
        ),
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
      redirect: (context, state) {
        if (userLoaderState.isLoading) {
          if (state.uri.toString() != '/splash') return '/splash';
          return null;
        }
        print(userAuthState);

        if (userAuthState == null) {
          if (state.uri.toString() != '/sign-in') return '/sign-in';
          return null;
        }

        if (state.uri.toString() == '/sign-in' ||
            state.uri.toString() == '/splash') {
          return '/home';
        }
        return null;
      },
    );
  },
);
