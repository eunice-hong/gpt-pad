import 'package:eunice_entity/profile.dart';

/// {@template datasource}
/// CompanyDatabaseDatasource
/// {@endtemplate}
abstract class ProfileDatabase {
  /// {@macro datasource}

  /// get profile information
  Profile getProfile();

  /// set profile information
  void setProfile(Profile profile);
}
