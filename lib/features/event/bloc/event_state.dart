part of './event_bloc.dart';

enum EventStateStatus { initial, loading, done, failure, logout }

class EventState {
  final EventStateStatus status;
  final List<Creator>? creators;
  final List<Meeting>? meetings;
  final List<Profession>? professions;

  EventState({
    this.status = EventStateStatus.initial,
    this.creators,
    this.meetings,
    this.professions,
  });

  EventState copyWith({
    EventStateStatus? status,
    List<Creator>? creators,
    List<Meeting>? meetings,
    List<Profession>? professions,
  }) {
    return EventState(
      status: status ?? this.status,
      creators: creators ?? this.creators,
      meetings: meetings ?? this.meetings,
      professions: professions ?? this.professions,
    );
  }
}
