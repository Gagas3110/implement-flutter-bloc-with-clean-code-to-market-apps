import 'package:flagsmith/flagsmith.dart';
import 'package:news_app/service/flagSmith_service.dart';

import 'flagSmith_data_source.dart';

class FlagSmithDataSourceImpl extends FlagSmithDataSource
    with FlagSmithService {
  FlagSmithDataSourceImpl(FlagsmithClient client, dynamic featureFlags) {
    initializeFlagSmithService(client, featureFlags);
  }

  @override
  Future<bool> isShownItem() async {
    await featureFlags;
    final value = await client.getFeatureFlagValue("show_item");
    final isbool = await client.isFeatureFlagEnabled("show_item");

    print(value);
    print(isbool);
    return isbool;
  }
}
