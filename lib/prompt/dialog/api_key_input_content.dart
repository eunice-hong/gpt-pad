import 'package:eunice_template/l10n/l10n.dart';
import 'package:eunice_ui/ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ApiKeyInputContent extends StatefulWidget {
  const ApiKeyInputContent({
    required this.onSubmitted,
    super.key,
  });

  final ValueChanged<String> onSubmitted;

  @override
  State<ApiKeyInputContent> createState() => _ApiKeyInputContentState();
}

class _ApiKeyInputContentState extends State<ApiKeyInputContent> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final linkText = context.l10n.apiKeyInputDialogKeyLinkText;
    final linkTextList = linkText.split(context.l10n.apiKeyInputDialogKeyLink);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: _controller,
          onSubmitted: widget.onSubmitted,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.black,
          ),
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
            label: Text(context.l10n.apiKeyInputDialogInputLabel),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.midnightBlue,
                ),
            children: [
              TextSpan(
                text: linkTextList[0],
              ),
              TextSpan(
                text: context.l10n.apiKeyInputDialogKeyLink,
                style: const TextStyle(
                  color: AppColors.springLeaf,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launchUrlString(
                      'https://platform.openai.com/account/api-keys',
                    );
                  },
              ),
              TextSpan(
                text: linkTextList[1],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        TextButton(
          style: TextButton.styleFrom(
            elevation: 0,
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
          onPressed: () {
            widget.onSubmitted(_controller.text);
          },
          child: Text(
            context.l10n.confirm,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: AppColors.white),
          ),
        ),
      ],
    );
  }
}
