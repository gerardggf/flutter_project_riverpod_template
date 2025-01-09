import 'package:flutter_driver/driver_extension.dart';
import 'package:riverpod_template/main.dart' as app;

//To run tests: "flutter drive --target=test_driver/app.dart"
void main() {
  enableFlutterDriverExtension();
  app.main();
}
