import 'package:eunice_template/prompt/dialog/api_key_input_content.dart';
import 'package:eunice_ui/ui.dart';
import 'package:flutter/material.dart';

class ApiKeyInputDialog extends StatelessWidget {
  const ApiKeyInputDialog({
    required this.onSubmitted,
    super.key,
  });

  final ValueChanged<String> onSubmitted;

  static Future<bool?> show(
    BuildContext context, {
    required ValueChanged<String> onSubmitted,
    bool barrierDismissible = true,
  }) {
    return showDialog<bool?>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable: true,
          titlePadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          content: ApiKeyInputDialog(
            onSubmitted: onSubmitted,
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
        child: Container(
          width: 600,
          color: AppColors.white,
          padding: const EdgeInsets.all(28),
          child: ApiKeyInputContent(
            onSubmitted: onSubmitted,
          ),
        ),
      ),
    );
  }
}
