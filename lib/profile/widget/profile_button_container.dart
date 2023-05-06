import 'package:eunice_template/gen/assets.gen.dart';
import 'package:eunice_template/l10n/l10n.dart';
import 'package:eunice_ui/ui.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

part 'profile_button.dart';

class ProfileButtonContainer extends StatelessWidget {
  const ProfileButtonContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProfileButton(
          onPressed: () => _openLink(
            'https://www.instagram.com/dev.driven.eunice',
          ),
          icon: Assets.images.icons.instagram.image(
            color: AppColors.white,
          ),
        ),
        ProfileButton(
          onPressed: () => _openLink(
            'https://github.com/eunice-hong',
          ),
          icon: Assets.images.icons.github.image(
            color: AppColors.white,
          ),
        ),
        ProfileButton(
          onPressed: () => _openMailApp(context),
          icon: const Icon(
            Icons.mail_outline_outlined,
            color: AppColors.white,
          ),
        ),
        ProfileButton(
          onPressed: () => _openLink(
            'https://eunice-hong.com/',
          ),
          icon: const Icon(
            Icons.link_outlined,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }

  Future<void> _openLink(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
      await GetIt.I.get<FirebaseAnalytics>().logEvent(
        name: 'open_link',
        parameters: {
          'url': url,
        },
      );
    } else {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _openMailApp(BuildContext context) async {
    final emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'contact@eunice-hong.com',
      query: encodeQueryParameters(<String, String>{
        context.l10n.profileMailSubjectKey:
            context.l10n.profileMailSubjectValue,
        context.l10n.profileMailBodyKey: context.l10n.profileMailBodyValue,
      }),
    );
    await launchUrl(emailLaunchUri);
    await GetIt.I.get<FirebaseAnalytics>().logEvent(
      name: 'open_link',
      parameters: {
        'url': emailLaunchUri.path,
      },
    );
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map(
          (MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');
  }
}
