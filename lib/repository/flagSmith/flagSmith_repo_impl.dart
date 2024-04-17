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
      rethrow;
    }
  }
}
