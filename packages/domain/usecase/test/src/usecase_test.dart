// ignore_for_file: prefer_const_constructors
import 'package:eunice_entity/src/profile/profile.dart';
import 'package:eunice_repository/repository.dart';
import 'package:eunice_usecase/usecase.dart';
import 'package:test/test.dart';

class _MockProfileRepository extends ProfileRepository {
  bool _isTrue = false;

  @override
  Profile getProfile() {
    // TODO(eunice-hong): implement getProfile
    throw UnimplementedError();
  }

  @override
  bool getShowProfileDetail() {
    return _isTrue;
  }

  @override
  void setProfile(Profile profile) {
    // TODO(eunice-hong): implement setProfile
  }

  @override
  Future<void> setShowProfileDetail({bool isOn = true}) async {
    _isTrue = isOn;
  }
}

void main() {
  group('Usecase', () {
    final profileRepository = _MockProfileRepository();
    test('can be instantiated', () {
      expect(GetShowProfileDetail(profileRepository), isNotNull);
      expect(SetShowProfileDetail(profileRepository), isNotNull);
    });
  });
}
