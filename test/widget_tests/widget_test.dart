import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_template/app/core/generated/translations.g.dart';
import 'package:riverpod_template/app/core/providers.dart';
import 'package:riverpod_template/app/domain/models/user_model.dart';
import 'package:riverpod_template/app/domain/repositories/auth_repository.dart';
import 'package:riverpod_template/app/domain/repositories/prefs_repository.dart';
import 'package:riverpod_template/app/domain/use_cases/log_out_use_case.dart';
import 'package:riverpod_template/app/my_app.dart';
import 'package:riverpod_template/app/presentation/modules/sign-in/sign_in_controller.dart';
import 'package:riverpod_template/app/presentation/routes/router.dart';
import 'package:riverpod_template/app/presentation/shared/controllers/session_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget testableWidget(Widget widget, {List<Override> overrides = const []}) {
  return TranslationProvider(
    child: ProviderScope(
      overrides: overrides,
      child: MaterialApp(home: widget),
    ),
  );
}

class MockAuthRepository extends Mock implements AuthRepository {}

class MockPrefsRepository extends Mock implements PrefsRepository {}

class MockSignInController extends Mock implements SignInController {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

class MockPackageInfo extends Mock implements PackageInfo {}

class MockUserModel extends Mock implements UserModel {}

void main() {
  late MockSignInController mockSignInController;
  late MockSharedPreferences mockSharedPrefs;
  late MockPackageInfo mockPackageInfo;
  late MockUserModel mockUserModel;
  late MockAuthRepository mockAuthRepo;

  setUp(() {
    mockSignInController = MockSignInController();
    mockSharedPrefs = MockSharedPreferences();
    mockPackageInfo = MockPackageInfo();
    mockUserModel = MockUserModel();
    mockAuthRepo = MockAuthRepository();
  });
  testWidgets('Test', (WidgetTester tester) async {
    final logOutUseCase = LogOutUseCase(mockAuthRepo);
    final sessionController = SessionController(null, logOutUseCase);

    when(() => mockSignInController.signIn(any(), any())).thenAnswer((_) async {
      sessionController.setUser(mockUserModel);
    });

    when(() => mockAuthRepo.logOut()).thenAnswer((_) async => true);

    await tester.pumpWidget(
      TranslationProvider(
        child: ProviderScope(
          overrides: [
            sessionControllerProvider.overrideWith((ref) => sessionController),
            signInControllerProvider
                .overrideWith((ref) => mockSignInController),
            sharedPreferencesProvider.overrideWith((ref) => mockSharedPrefs),
            packageInfoProvider.overrideWith((ref) => mockPackageInfo),
            authRepoProvider.overrideWithValue(mockAuthRepo),
            logOutUseCaseProvider.overrideWithValue(logOutUseCase),
            userLoaderFutureProvider.overrideWith((ref) => null),
          ],
          child: const MyApp(),
        ),
      ),
    );

    if (kDebugMode) {
      print('widget pumped');
    }

    await tester.pumpAndSettle();

    expect(find.text('Sign in'), findsWidgets);
    expect(find.text('Sign out'), findsNothing);

    if (kDebugMode) {
      print('signed in');
    }

    await tester.tap(find.byKey(const Key('auth-button')));
    await tester.pumpAndSettle();

    expect(find.text('Sign out'), findsOneWidget);
    expect(find.text('Sign in'), findsNothing);

    if (kDebugMode) {
      print('signed out');
    }
  });
}
