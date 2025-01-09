class Failure {
  final String message;

  Failure(this.message);

  @override
  String toString() => message;
}

class FirebaseFailure extends Failure {
  final String code;

  FirebaseFailure(
    super.message,
    this.code,
  );

  @override
  String toString() => "FirebaseFailure(code: $code, message: $message)";
}
