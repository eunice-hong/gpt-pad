import 'package:eunice_datasource/datasource.dart';
import 'package:eunice_repository/repository.dart';
import 'package:get_it/get_it.dart';

extension RepositoryGetIt on GetIt {
  void setupRepository() {
    registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(
        preference: get<ProfilePreference>(),
      ),
    );
  }
}
