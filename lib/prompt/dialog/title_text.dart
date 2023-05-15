part of 'gpt_pad_alert_content.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    required this.message,
    super.key,
  });

  final TextSpan message;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: const Color(0xFFB6B6B6),
            ),
        children: [
          message,
        ],
      ),
    );
  }
}
