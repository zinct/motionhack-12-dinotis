import 'package:bloc/bloc.dart';
import 'package:motionhack/features/user/entities/user.dart';
import 'package:motionhack/features/user/model/user_detail_model.dart';
import 'package:motionhack/features/user/repository/user_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState());
  UserRepository _userRepository = UserRepository();

  void login(String phone, String password) async {
    emit(state.copyWith(status: AuthStateStatus.loading));
    UserDetailModel data = await _userRepository.getDetail();
    emit(state.copyWith(status: AuthStateStatus.done, user: data.user));
  }

  void logout() {
    emit(state.copyWith(status: AuthStateStatus.logout, user: null));
  }
}
