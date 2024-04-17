import 'package:flagsmith/flagsmith.dart';

mixin FlagSmithService {
  late FlagsmithClient client;
  late dynamic featureFlags;

  void initializeFlagSmithService(
      FlagsmithClient client, dynamic featureFlags) {
    this.client = client;
    this.featureFlags = featureFlags;
  }
}

