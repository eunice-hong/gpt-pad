// ignore_for_file: prefer_const_constructors
import 'package:eunice_preference/preference.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('Preference', () {
    test('can be instantiated', () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      final prefs = await SharedPreferences.getInstance();
      final values = <String, Object>{'counter': 1};
      SharedPreferences.setMockInitialValues(values);
      expect(ProfilePreferenceImpl(prefs), isNotNull);
    });
  });
}
