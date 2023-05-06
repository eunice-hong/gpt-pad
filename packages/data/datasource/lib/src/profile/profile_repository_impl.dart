import 'package:eunice_datasource/datasource.dart';
import 'package:eunice_entity/profile.dart';
import 'package:eunice_repository/repository.dart';

/// {@template datasource}
/// Company Repository Impl
/// {@endtemplate}
class ProfileRepositoryImpl extends ProfileRepository {
  /// {@macro datasource}

  const ProfileRepositoryImpl({
    required ProfilePreference preference,
  }) : _preference = preference;

  final ProfilePreference _preference;

  @override
  Profile getProfile() {
    // TODO(eunjin-hong): implement getCompanyInfo
    throw UnimplementedError();
  }

  @override
  void setProfile(Profile value) {
    // TODO(eunjin-hong): implement setCompanyInfo
  }

  @override
  bool getShowProfileDetail() {
    return _preference.getShowProfileDetail();
  }

  @override
  Future<void> setShowProfileDetail({bool isOn = true}) {
    return _preference.setShowProfileDetail(isOn: isOn);
  }
}
