import 'package:eunice_entity/profile.dart';

/// {@template eunice_repository}
/// ProfileRepository
/// {@endtemplate}
abstract class ProfileRepository {
  /// {@macro repository}
  const ProfileRepository();

  /// should show profile detail
  bool getShowProfileDetail();

  /// set show profile detail by [isOn]
  Future<void> setShowProfileDetail({bool isOn});

  /// get profile information
  Profile getProfile();

  /// set [profile] information
  void setProfile(Profile profile);
}
