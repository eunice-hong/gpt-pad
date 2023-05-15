part of 'gpt_pad_alert_content.dart';

class ActionButtonContainer extends StatelessWidget {
  const ActionButtonContainer({
    required this.confirmButtonText,
    required this.onConfirmPressed,
    required this.cancelButtonText,
    super.key,
  });

  final String confirmButtonText;

  final VoidCallback onConfirmPressed;

  final String cancelButtonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 45,
      ),
      child: Row(
        children: [
          Flexible(
            child: _buildButton(
              context: context,
              text: confirmButtonText,
              onPressed: () {
                onConfirmPressed();
                Navigator.of(context).pop(true);
              },
            ),
          ),
          const VerticalDivider(
            width: 8,
            color: Colors.transparent,
          ),
          Flexible(
            child: _buildButton(
              context: context,
              text: cancelButtonText,
              backgroundColor: AppColors.grey,
              onPressed: () => Navigator.of(context).pop(false),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({
    required BuildContext context,
    required String text,
    Color? backgroundColor,
    VoidCallback? onPressed,
  }) {
    return TextButton(
      style: TextButton.styleFrom(
        elevation: 0,
        minimumSize: const Size(double.infinity, 60),
        disabledBackgroundColor: AppColors.grey,
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 32,
          right: 32,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .labelLarge
            ?.copyWith(color: AppColors.white),
      ),
    );
  }
}
