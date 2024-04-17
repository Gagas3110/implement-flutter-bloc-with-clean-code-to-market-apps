import 'package:freezed_annotation/freezed_annotation.dart';

part 'flagsmith_event.freezed.dart';

@freezed
abstract class FlagsmithEvent with _$FlagsmithEvent {
  const factory FlagsmithEvent.setupFlagsmithEvent() = SetupFlagsmithEvent;
}
