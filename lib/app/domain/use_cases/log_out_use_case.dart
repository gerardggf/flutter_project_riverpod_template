import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/auth_repository.dart';

final logOutUseCaseProvider = Provider<LogOutUseCase>(
  (ref) => LogOutUseCase(
    ref.read(authRepoProvider),
  ),
);

class LogOutUseCase {
  final AuthRepository authRepo;

  LogOutUseCase(this.authRepo);
  Future<bool> call() {
    return authRepo.logOut();
  }
}
