/// {@template datasource}
/// Company Preference Datasource
/// {@endtemplate}
abstract class ProfilePreference {
  /// {@macro datasource}

  /// get show profile detail
  bool getShowProfileDetail({bool defaultValue = false});

  /// set show profile detail
  Future<void> setShowProfileDetail({bool isOn});
}
