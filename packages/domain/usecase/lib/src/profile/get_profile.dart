import 'package:eunice_entity/profile.dart';
import 'package:eunice_repository/repository.dart';

/// {@template usecase}
/// GetCompanyInfo
/// {@endtemplate}
class GetCompanyInfo {
  /// {@macro GetCompanyInfo}
  GetCompanyInfo(ProfileRepository profileRepository)
      : _profileRepository = profileRepository;

  final ProfileRepository _profileRepository;

  /// get profile info
  Future<Profile> call() async {
    return _profileRepository.getProfile();
  }
}
