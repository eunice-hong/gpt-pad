// ignore_for_file: prefer_const_constructors
import 'package:eunice_datasource/datasource.dart';
import 'package:test/test.dart';

class _MockProfilePreference extends ProfilePreference {
  bool data = false;

  @override
  bool getShowProfileDetail({bool defaultValue = false}) {
    return data;
  }

  @override
  Future<void> setShowProfileDetail({bool isOn = true}) async {
    data = isOn;
  }
}

void main() {
  group('Datasource', () {
    test('can be instantiated', () {
      expect(
        ProfileRepositoryImpl(
          preference: _MockProfilePreference(),
        ),
        isNotNull,
      );
    });
  });
}
