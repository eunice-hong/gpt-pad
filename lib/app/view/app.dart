import 'package:eunice_template/l10n/l10n.dart';
import 'package:eunice_template/prompt/cubit/api_key_cubit.dart';
import 'package:eunice_template/prompt/prompt_screen.dart';
import 'package:eunice_ui/ui.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  StatelessElement createElement() {
    GetIt.I.get<FirebaseAnalytics>().logAppOpen();
    return StatelessElement(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.standard,
      darkTheme: AppTheme.dark,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      onGenerateTitle: (context) => context.l10n.appTitle,
      supportedLocales: AppLocalizations.supportedLocales,
      navigatorObservers: [
        GetIt.I.get<FirebaseAnalyticsObserver>(),
      ],
      home: BlocProvider(
        create: (context) => ApiKeyCubit(),
        child: const PromptScreen(),
      ),
    );
  }
}
