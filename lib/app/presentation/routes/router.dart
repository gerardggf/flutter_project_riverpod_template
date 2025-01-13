import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_template/app/core/constants/assets.dart';
import 'package:riverpod_template/app/domain/models/user_model.dart';
import 'package:riverpod_template/app/presentation/modules/profile/profile_view.dart';
import 'package:riverpod_template/app/presentation/modules/sign-in/sign_in_view.dart';

import '../../core/generated/translations.g.dart';
import '../shared/widgets/error_info_widget.dart';
import '../modules/home/home_view.dart';
import '../modules/splash/splash_view.dart';

final userStreamProvider = StreamProvider<UserModel?>((ref) {
  return Stream.value(
    UserModel(
      name: '',
      id: '',
      email: '',
      creationDate: DateTime.now(),
    ),
  );
});

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final userAuthState = ref.watch(userStreamProvider);
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
        if (userAuthState.isLoading) {
          if (state.uri.toString() != '/splash') return '/splash';
          return null;
        }
        if (userAuthState.hasError || userAuthState.value == null) {
          if (state.uri.toString() != '/sign-in') return '/sign-in';
          return null;
        }
        if (userAuthState.value != null) {
          if (state.uri.toString() != '/home') return '/home';
          return null;
        }
        return null;
      },
    );
  },
);
