part of 'profile_button_container.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      color: AppColors.seaSerpent,
      iconSize: 32,
    );
  }
}
