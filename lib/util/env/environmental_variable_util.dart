import 'dart:developer';

import 'package:eunice_template/gen/assets.gen.dart';
import 'package:eunice_template/util/env/app_default_variables.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> setUpEnvironmentVariable() async {
  try {
    // try load environment variable from assets
    await dotenv.load(
      fileName: kDebugMode ? Assets.env.debug : Assets.env.release,
    );
  } catch (e) {
    await dotenv.load(
      fileName: Assets.env.env,
      mergeWith: appDefaultVariables,
    );
    log('Failed to load environment variable from assets, using default');
  }
}
