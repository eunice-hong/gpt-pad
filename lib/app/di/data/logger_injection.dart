import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get_it/get_it.dart';

extension LoggerGetIt on GetIt {
  void setupFirebaseAnalytics() {
    registerSingleton<FirebaseAnalytics>(
      FirebaseAnalytics.instance,
    );
    registerSingleton<FirebaseAnalyticsObserver>(
      FirebaseAnalyticsObserver(
        analytics: get<FirebaseAnalytics>(),
      ),
    );
  }
}
