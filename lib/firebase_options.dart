import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.fuchsia:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for fuchsia - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }
  }

  static final FirebaseOptions web = FirebaseOptions(
    apiKey: dotenv.get(_firebaseWebApiKey),
    appId: dotenv.get(_firebaseWebAppId),
    messagingSenderId: dotenv.get(_firebaseWebMessagingSenderId),
    projectId: dotenv.get(_firebaseWebProjectId),
    authDomain: dotenv.get(_firebaseWebAuthDomain),
    storageBucket: dotenv.get(_firebaseWebStorageBucket),
    measurementId: dotenv.get(_firebaseWebMeasurementId),
  );

  static const firebaseWebConfigs = {
    _firebaseWebApiKey: String.fromEnvironment(_firebaseWebApiKey),
    _firebaseWebAppId: String.fromEnvironment(_firebaseWebAppId),
    _firebaseWebMessagingSenderId:
        String.fromEnvironment(_firebaseWebMessagingSenderId),
    _firebaseWebProjectId: String.fromEnvironment(_firebaseWebProjectId),
    _firebaseWebAuthDomain: String.fromEnvironment(_firebaseWebAuthDomain),
    _firebaseWebStorageBucket:
        String.fromEnvironment(_firebaseWebStorageBucket),
    _firebaseWebMeasurementId:
        String.fromEnvironment(_firebaseWebMeasurementId),
  };

  static final FirebaseOptions android = FirebaseOptions(
    apiKey: dotenv.get('ANDROID_API_KEY'),
    appId: dotenv.get('ANDROID_APP_ID'),
    messagingSenderId: dotenv.get('ANDROID_MESSAGING_SENDER_ID'),
    projectId: dotenv.get('ANDROID_PROJECT_ID'),
    databaseURL: dotenv.get('ANDROID_DATABASE_URL'),
    storageBucket: dotenv.get('ANDROID_STORAGE_BUCKET'),
  );

  static final FirebaseOptions ios = FirebaseOptions(
    apiKey: dotenv.get('IOS_API_KEY'),
    appId: dotenv.get('IOS_APP_ID'),
    messagingSenderId: dotenv.get('IOS_MESSAGING_SENDER_ID'),
    projectId: dotenv.get('IOS_PROJECT_ID'),
    databaseURL: dotenv.get('IOS_DATABASE_URL'),
    storageBucket: dotenv.get('IOS_STORAGE_BUCKET'),
    iosClientId: dotenv.get('IOS_CLIENT_ID'),
    iosBundleId: dotenv.get('IOS_BUNDLE_ID'),
  );

  static const _firebaseWebApiKey = 'WEB_API_KEY';
  static const _firebaseWebAppId = 'WEB_APP_ID';
  static const _firebaseWebMessagingSenderId = 'WEB_MESSAGING_SENDER_ID';
  static const _firebaseWebProjectId = 'WEB_PROJECT_ID';
  static const _firebaseWebAuthDomain = 'WEB_AUTH_DOMAIN';
  static const _firebaseWebStorageBucket = 'WEB_STORAGE_BUCKET';
  static const _firebaseWebMeasurementId = 'WEB_MEASUREMENT_ID';
}
