part of 'home_bloc.dart';

enum HomeStateStatus { initial, loading, done, failure }

class HomeState {
  final HomeStateStatus status;
  final List<Creator> creators;
  final List<Creator> topCreators;

  HomeState({
    this.creators = const [],
    this.topCreators = const [],
    this.status = HomeStateStatus.initial,
  });

  HomeState copyWith({
    HomeStateStatus? status,
    List<Creator>? creators,
    List<Creator>? topCreators,
  }) {
    return HomeState(
      status: status ?? this.status,
      creators: creators ?? this.creators,
      topCreators: topCreators ?? this.topCreators,
    );
  }
}
