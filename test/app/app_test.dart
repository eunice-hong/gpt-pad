import 'package:eunice_template/app/app.dart';
import 'package:eunice_template/app/di/app_injection.dart';
import 'package:eunice_template/firebase_options.dart';
import 'package:eunice_template/profile/widget/profile_content.dart';
import 'package:eunice_template/util/env/environmental_variable_util.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../mock/firebase/firebase_analytics_mock.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setupFirebaseAnalyticsMocks();

  group('App', () {
    setUpAll(() async {
      await setUpEnvironmentVariable();
      SharedPreferences.setMockInitialValues({});
      await Firebase.initializeApp(
        name: 'test-app',
        options: DefaultFirebaseOptions.web,
      );
      await GetIt.I.init();
    });

    testWidgets('open App test', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle();
      expect(find.byType(ProfileContent), findsOneWidget);
    });
  });
}
