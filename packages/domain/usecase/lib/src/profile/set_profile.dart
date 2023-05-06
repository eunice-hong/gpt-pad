import 'package:eunice_entity/profile.dart';
import 'package:eunice_repository/repository.dart';

/// {@template usecase}
/// SetProfile
/// {@endtemplate}
class SetProfile {
  /// {@macro SetCompanyInfo}
  SetProfile(ProfileRepository profileRepository)
      : _profileRepository = profileRepository;

  final ProfileRepository _profileRepository;

  /// set profile info [profile]
  Future<void> call(Profile profile) async {
    return _profileRepository.setProfile(profile);
  }
}
