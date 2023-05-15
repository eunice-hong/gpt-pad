import 'package:eunice_ui/ui.dart';
import 'package:flutter/material.dart';

part 'action_button_container.dart';
part 'subtitle_text.dart';
part 'title_text.dart';

class GptPadAlertContent extends StatelessWidget {
  const GptPadAlertContent({
    required this.titleMessage,
    required this.warningMessage,
    required this.warningMessageColor,
    required this.confirmButtonText,
    super.key,
  });

  final TextSpan titleMessage;

  final String warningMessage;

  final Color? warningMessageColor;

  final String confirmButtonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      color: AppColors.white,
      padding: const EdgeInsets.all(28),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TitleText(
            message: titleMessage,
          ),
          const Divider(
            height: 20,
            color: AppColors.transparent,
          ),
          SubtitleText(
            message: warningMessage,
            messageColor: warningMessageColor,
          ),
          ActionButtonContainer(
            confirmButtonText: confirmButtonText,
            onConfirmPressed: () {},
            cancelButtonText: '',
          ),
        ],
      ),
    );
  }
}
