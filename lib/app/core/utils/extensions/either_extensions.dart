import '../either/either.dart';

extension EitherHelpers<L, R> on Either<L, R> {
  bool get isSuccess => this is Right<L, R>;
  bool get isFailure => this is Left<L, R>;

  L? get failure => isFailure ? (this as Left<L, R>).value : null;
  R? get value => isSuccess ? (this as Right<L, R>).value : null;
}
