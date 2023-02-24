part of 'auth_cubit.dart';

enum AuthStateStatus { initial, loading, done, failure, logout }

class AuthState {
  final AuthStateStatus status;
  final User? user;

  AuthState({this.status = AuthStateStatus.initial, this.user});

  AuthState copyWith({
    AuthStateStatus? status,
    User? user,
  }) {
    return AuthState(
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }
}
