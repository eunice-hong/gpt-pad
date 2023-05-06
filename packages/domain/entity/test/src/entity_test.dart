// ignore_for_file: prefer_const_constructors
import 'package:eunice_entity/profile.dart';
import 'package:test/test.dart';

void main() {
  group('Profile', () {
    test('can be instantiated', () {
      expect(
        Profile(
          name: 'Jason',
          homepageUrl: 'https://github.com',
          imageUrl: '',
          bio: '',
        ),
        isNotNull,
      );
    });
  });
}
