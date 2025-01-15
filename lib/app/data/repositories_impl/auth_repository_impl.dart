import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:riverpod_template/app/core/utils/typedefs.dart';

import 'package:riverpod_template/app/domain/models/user_model.dart';

import '../../core/utils/either/either.dart';
import '../../core/utils/failure/failure.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  AsyncResult<UserModel> login(String email, String password) async {
    try {
      return Either.right(
        UserModel(
          name: 'Test',
          id: '000',
          email: email,
          creationDate: DateTime.now(),
        ),
      );
    } catch (e) {
      if (kDebugMode) print(e.toString());
      return Either.left(
        Failure('Unknown error'),
      );
    }
  }
}
