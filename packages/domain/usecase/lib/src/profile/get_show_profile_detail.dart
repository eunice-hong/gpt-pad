import 'package:eunice_repository/repository.dart';

/// {@template eunice_usecase}
/// GetTestBoolean
/// {@endtemplate}
class GetShowProfileDetail {
  /// {@macro GetTestBoolean}
  GetShowProfileDetail(ProfileRepository profileRepository)
      : _profileRepository = profileRepository;

  final ProfileRepository _profileRepository;

  /// get preference test boolean value
  Future<bool> call() async {
    return _profileRepository.getShowProfileDetail();
  }
}
