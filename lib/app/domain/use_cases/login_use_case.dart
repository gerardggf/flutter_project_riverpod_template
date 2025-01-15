import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/typedefs.dart';
import '../models/user_model.dart';
import '../repositories/auth_repository.dart';

final loginUseCaseProvider = Provider<LoginUseCase>(
  (ref) => LoginUseCase(
    ref.read(authRepoProvider),
  ),
);

class LoginUseCase {
  final AuthRepository authRepo;

  LoginUseCase(this.authRepo);
  AsyncResult<UserModel> call(String email, String password) {
    return authRepo.login(email, password);
  }
}
