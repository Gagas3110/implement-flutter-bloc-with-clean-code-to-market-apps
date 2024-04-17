import 'package:freezed_annotation/freezed_annotation.dart';

part 'flagsmith_state.freezed.dart';

@freezed
abstract class FlagsmithState with _$FlagsmithState {
  const factory FlagsmithState.flagsmithInitial() = FlagsmithInitial;
  const factory FlagsmithState.flagsmithLoading() = FlagsmithLoading;
  const factory FlagsmithState.flagsmithGetData({
    required bool isShowData,
  }) = FlagsmithGetData;
  const factory FlagsmithState.flagsmithFailed(String msg) = FlagsmithFailed;
}
