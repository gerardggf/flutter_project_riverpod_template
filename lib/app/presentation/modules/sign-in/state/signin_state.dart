import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/user_model.dart';

part 'signin_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loading() = _Loading;
  const factory SignInState.success(UserModel user) = _Success;
  const factory SignInState.error(String message) = _Error;
}
