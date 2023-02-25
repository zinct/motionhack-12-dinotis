part of 'event_bloc.dart';

abstract class EventEvent {}

class EventEventFetching extends EventEvent {}

class EventEventSearching extends EventEvent {
  final String? creator;

  EventEventSearching({this.creator});
}
