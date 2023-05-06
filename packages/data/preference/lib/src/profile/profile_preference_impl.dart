import 'package:eunice_datasource/datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template datasource}
/// Profile Preference Impl
/// {@endtemplate}
class ProfilePreferenceImpl extends ProfilePreference {
  /// {@macro datasource}

  ProfilePreferenceImpl(
    SharedPreferences prefs,
  )   : _prefs = prefs;

  final SharedPreferences _prefs;

  static const String _showProfileDetail = 'show_profile_detail';

  @override
  bool getShowProfileDetail({bool defaultValue = false}) {
    return _prefs.getBool(_showProfileDetail) ?? defaultValue;
  }

  @override
  Future<void> setShowProfileDetail({bool isOn = true}) {
    return _prefs.setBool(_showProfileDetail, isOn);
  }
}
