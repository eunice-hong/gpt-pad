import 'package:eunice_datasource/datasource.dart';
import 'package:eunice_preference/preference.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension DatasourceGetIt on GetIt {
  Future<void> setupDatasource() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    registerLazySingleton<ProfilePreference>(
      () => ProfilePreferenceImpl(sharedPreferences),
    );
  }
}
