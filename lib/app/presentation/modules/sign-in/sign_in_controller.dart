import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_template/app/presentation/shared/controllers/session_controller.dart';

import '../../../domain/use_cases/login_use_case.dart';
import 'state/signin_state.dart';

final signInControllerProvider =
    StateNotifierProvider<SignInController, SignInState>(
  (ref) => SignInController(
    ref.read(loginUseCaseProvider),
    ref.read(sessionControllerProvider.notifier),
  ),
);

class SignInController extends StateNotifier<SignInState> {
  final LoginUseCase loginUseCase;
  final SessionController sessionController;

  SignInController(
    this.loginUseCase,
    this.sessionController,
  ) : super(
          const SignInState.initial(),
        );

  Future<void> signIn(String email, String password) async {
    state = const SignInState.initial();

    final result = await loginUseCase(
      email,
      password,
    );

    result.when(
      left: (failure) {
        state = SignInState.error(failure.message);
      },
      right: (user) {
        sessionController.setUser(user);
        state = SignInState.success(user);
      },
    );
  }
}
