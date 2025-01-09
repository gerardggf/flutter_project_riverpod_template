import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

//To run tests: "flutter drive --target=test_driver/app.dart"

void main() {
  group(
    'Authentication',
    () {
      final emailTf = find.byValueKey('email-tf');
      final pswdTf = find.byValueKey('pswd-tf');
      final signInBtn = find.byValueKey('sign-in-btn');

      late FlutterDriver driver;

      setUpAll(() async {
        driver = await FlutterDriver.connect();
        await driver.waitUntilFirstFrameRasterized();
      });

      test(
        'Sign in',
        () async {
          await driver.tap(emailTf);
          await driver.enterText('xxxx@gmail.com');
          await driver.tap(pswdTf);
          await driver.enterText('123456');
          await driver.tap(signInBtn);
        },
      );

      tearDownAll(
        () async {
          await driver.close();
        },
      );
    },
  );
}
