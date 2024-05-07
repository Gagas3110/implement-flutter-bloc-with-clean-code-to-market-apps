import 'package:dynatrace_flutter_plugin/dynatrace_flutter_plugin.dart';
import 'package:flagsmith/src/flagsmith_client.dart';

import '../../data/remote/flagSmith_data_source/flagSmith_data_source_impl.dart';
import 'flagSmith_repo.dart';

class FlagSmithRepoImp extends FlagSmithRepo {
  final FlagSmithDataSourceImpl flagDataSource;

  FlagSmithRepoImp({required this.flagDataSource});
  @override
  Future<bool> isShownItem() async {
    try {
      var isShown = await flagDataSource.isShownItem();
      return isShown;
    } catch (e) {
      Dynatrace()
          .reportCrash('FormatException', 'Flagsmith Error', e.toString());
      rethrow;
    }
  }

  @override
  Future fetchFeatureFlags(FlagsmithClient client) async {
    return await client.getFeatureFlags(reload: true);
  }
}
