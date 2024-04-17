import 'package:flagsmith/flagsmith.dart' as flags;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/repository/flagSmith/flagSmith_repo_impl.dart';
import '../../data/remote/flagSmith_data_source/flagSmith_data_source_impl.dart';
import '../../helper/app_config.dart';
import 'flagsmith_event.dart';
import 'flagsmith_state.dart';

class FlagsmithBloc extends Bloc<FlagsmithEvent, FlagsmithState> {
  FlagsmithBloc() : super(FlagsmithInitial()) {
    on<FlagsmithEvent>(
      (event, emit) async {
        try {
          if (event is SetupFlagsmithEvent) {
            emit(FlagsmithLoading());
            final flagsmithClient = flags.FlagsmithClient(
              apiKey: AppConfig.shared.flagSmithKey,
              seeds: <flags.Flag>[
                flags.Flag.seed('feature', enabled: true),
              ],
            );
            final featureFlags = await fetchFeatureFlags(flagsmithClient);
            var flagDataSource =
                FlagSmithDataSourceImpl(flagsmithClient, featureFlags);
            final repo = FlagSmithRepoImp(flagDataSource: flagDataSource);
            final isShown = await repo.isShownItem();
            emit(FlagsmithGetData(isShowData: isShown));
          }
        } catch (e) {
          emit(FlagsmithFailed(e.toString()));
        }
      },
    );
  }
  Future<dynamic> fetchFeatureFlags(flags.FlagsmithClient client) async {
    return await client.getFeatureFlags(reload: true);
  }
}
