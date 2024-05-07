import 'package:flagsmith/flagsmith.dart';

abstract class FlagSmithRepo {
  Future<bool> isShownItem();
  Future<dynamic> fetchFeatureFlags(FlagsmithClient client);
}
