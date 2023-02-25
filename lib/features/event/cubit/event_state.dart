part of 'event_cubit.dart';

enum EventStateStatus { initial, loading, done, failure, logout }

class EventState {
  final EventStateStatus status;
  final List<Creator>? creators;
  final List<Meeting>? meetings;

  EventState({
    this.status = EventStateStatus.initial,
    this.creators,
    this.meetings,
  });

  EventState copyWith({
    EventStateStatus? status,
    List<Creator>? creators,
    List<Meeting>? meetings,
  }) {
    return EventState(
      status: status ?? this.status,
      creators: creators ?? this.creators,
      meetings: meetings ?? this.meetings,
    );
  }
}
