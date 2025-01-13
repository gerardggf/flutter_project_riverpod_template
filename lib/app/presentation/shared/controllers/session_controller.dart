import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/user_model.dart';

final sessionControllerProvider =
    StateNotifierProvider<SessionController, UserModel?>(
  (ref) => SessionController(null),
);

class SessionController extends StateNotifier<UserModel?> {
  SessionController(super.state);

  void setUser(UserModel? user) {
    state = user;
  }
}
