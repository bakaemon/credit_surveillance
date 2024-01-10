part of 'app_bloc.dart';

class AppEvent {}

@freezed
class InitAppEvent extends AppEvent with _$InitAppEvent {
  const factory InitAppEvent() = _InitAppEvent;
}
