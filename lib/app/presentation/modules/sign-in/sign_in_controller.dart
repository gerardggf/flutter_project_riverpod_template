// providers/login_notifier.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/use_cases/login_use_case.dart';
import 'state/signin_state.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  final LoginUseCase loginUseCase;

  SignInNotifier(this.loginUseCase) : super(const SignInState.initial());

  Future<void> login(String email, String password) async {
    state = const SignInState.initial();

    final result = await loginUseCase(email, password);

    result.when(
      left: (failure) {
        state = SignInState.error(failure.message);
      },
      right: (user) {
        state = SignInState.success(user);
      },
    );
  }
}
