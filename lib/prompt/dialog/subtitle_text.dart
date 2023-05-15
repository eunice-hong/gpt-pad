part of 'gpt_pad_alert_content.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({
    required this.message,
    Color? messageColor,
    super.key,
  }) : _messageColor = messageColor ?? const Color(0xFFFF8D8D);

  final String message;

  final Color _messageColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: _messageColor,
      ),
    );
  }
}
