import 'package:eunice_template/prompt/dialog/gpt_pad_alert_content.dart';
import 'package:flutter/material.dart';

class GptPadAlertDialog extends StatelessWidget {
  const GptPadAlertDialog({
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

  static Future<String?> show(
    BuildContext context, {
    required TextSpan titleMessage,
    required String warningMessage,
    required Color? warningMessageColor,
    required String confirmButtonText,
    bool barrierDismissible = true,
  }) {
    return showDialog<String?>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable: true,
          titlePadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          content: GptPadAlertDialog(
            titleMessage: titleMessage,
            warningMessage: warningMessage,
            warningMessageColor: warningMessageColor,
            confirmButtonText: confirmButtonText,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      child: SingleChildScrollView(
        child: GptPadAlertContent(
          titleMessage: titleMessage,
          warningMessage: warningMessage,
          warningMessageColor: warningMessageColor,
          confirmButtonText: confirmButtonText,
        ),
      ),
    );
  }
}
