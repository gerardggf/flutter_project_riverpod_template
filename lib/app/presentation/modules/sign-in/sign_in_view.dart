import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_template/app/presentation/modules/sign-in/sign_in_controller.dart';

class SignInView extends ConsumerWidget {
  const SignInView({super.key});

  static const String routeName = 'sign-in';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(signInControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            notifier.signIn(
              'test@test.com',
              '123456',
            );
          },
          child: const Text('Sign in'),
        ),
      ),
    );
  }
}
