part of 'home_bloc.dart';

class HomeEvent {}

@freezed
class InitHomeEvent extends HomeEvent with _$InitHomeEvent {
  const factory InitHomeEvent() = _InitHomeEvent;
}
