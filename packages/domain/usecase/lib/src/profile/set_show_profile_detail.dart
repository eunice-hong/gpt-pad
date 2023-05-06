import 'package:eunice_repository/repository.dart';

/// {@template usecase}
/// SetShowProfileDetail
/// {@endtemplate}
class SetShowProfileDetail {
  /// {@macro SetTestBoolean}
  SetShowProfileDetail(ProfileRepository profileRepository)
      : _profileRepository = profileRepository;

  final ProfileRepository _profileRepository;

  /// set show profile detail [isOn]
  Future<void> call({bool isOn = false}) async {
    return _profileRepository.setShowProfileDetail(isOn: isOn);
  }
}
