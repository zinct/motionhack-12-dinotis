part of 'home_bloc.dart';

enum HomeStateStatus { initial, loading, done, failure }

class HomeState {
  final HomeStateStatus status;
  final List<Creator> creators;

  HomeState({
    this.creators = const [],
    this.status = HomeStateStatus.initial,
  });

  HomeState copyWith({
    HomeStateStatus? status,
    List<Creator>? creators,
  }) {
    return HomeState(
      status: status ?? this.status,
      creators: creators ?? this.creators,
    );
  }
}
