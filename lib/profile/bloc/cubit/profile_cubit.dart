import 'package:bloc/bloc.dart';
import 'package:eunice_repository/repository.dart';
import 'package:eunice_usecase/usecase.dart';

class ProfileCubit extends Cubit<bool> {
  ProfileCubit({
    required ProfileRepository profileRepository,
  })  : _getShowProfileDetail = GetShowProfileDetail(profileRepository),
        _setShowProfileDetail = SetShowProfileDetail(profileRepository),
        super(false) {
    getProfile();
  }

  final GetShowProfileDetail _getShowProfileDetail;
  final SetShowProfileDetail _setShowProfileDetail;

  Future<void> getProfile() async {
    final result = await _getShowProfileDetail.call();
    emit(result);
  }

  Future<void> setProfile({bool isOn = false}) async {
    await _setShowProfileDetail.call(isOn: isOn);
    emit(isOn);
  }
}
