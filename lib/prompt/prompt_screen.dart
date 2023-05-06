import 'package:eunice_template/l10n/l10n.dart';
import 'package:flutter/material.dart';

class PromptScreen extends StatelessWidget {
  const PromptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.appTitle),
      ),
      body: Center(
        child: Text(
          context.l10n.underConstruction,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
