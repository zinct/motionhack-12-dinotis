part of './event_bloc.dart';

enum EventStateStatus { initial, loading, done, failure, logout }

class EventState {
  final EventStateStatus status;
  final List<Creator>? creators;
  final List<Creator>? topCreators;
  final List<Meeting>? meetings;
  final List<Profession>? professions;
  final String? search;

  EventState({
    this.status = EventStateStatus.initial,
    this.creators,
    this.topCreators,
    this.meetings,
    this.professions,
    this.search = '',
  });

  EventState copyWith({
    EventStateStatus? status,
    List<Creator>? creators,
    List<Creator>? topCreators,
    List<Meeting>? meetings,
    List<Profession>? professions,
    String? search,
  }) {
    return EventState(
      status: status ?? this.status,
      creators: creators ?? this.creators,
      topCreators: topCreators ?? this.topCreators,
      meetings: meetings ?? this.meetings,
      professions: professions ?? this.professions,
      search: search ?? this.search,
    );
  }
}
