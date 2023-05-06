// ignore_for_file: public_member_api_docs

import 'package:eunice_datasource/datasource.dart';
import 'package:eunice_entity/profile.dart';
import 'package:sqflite/sqlite_api.dart';

/// {@template profile_database_impl}
/// ProfileDatabaseImpl
/// {@endtemplate}
class ProfileDatabaseImpl extends ProfileDatabase {
  /// [database] for database
  ProfileDatabaseImpl(Database database) : _database = database;

  /// database
  final Database _database;

  @override
  Profile getProfile() {
    // TODO(eunice-hong): implement getProfile
    throw UnimplementedError();
  }

  @override
  void setProfile(Profile profile) {
    // TODO(eunice-hong): implement setProfile
    throw UnimplementedError();
  }
}
