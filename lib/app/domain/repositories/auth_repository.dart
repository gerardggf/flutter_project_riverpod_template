import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_template/app/core/utils/typedefs.dart';
import 'package:riverpod_template/app/data/repositories_impl/auth_repository_impl.dart';
import 'package:riverpod_template/app/domain/models/user_model.dart';

final authRepoProvider = Provider<AuthRepository>(
  (ref) => AuthRepositoryImpl(),
);

abstract class AuthRepository {
  AsyncResult<UserModel> login(String email, String password);
}
