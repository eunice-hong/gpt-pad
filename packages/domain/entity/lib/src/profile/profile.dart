/// {@template profile}
/// Profile
/// {@endtemplate}
class Profile {
  /// {@macro profile}
  const Profile({
    required this.name,
    this.imageUrl,
    this.bio,
    this.homepageUrl,
  });

  /// Profile name
  final String name;

  /// profile image URL
  final String? imageUrl;

  /// bio
  final String? bio;

  /// Home page URL
  final String? homepageUrl;
}
