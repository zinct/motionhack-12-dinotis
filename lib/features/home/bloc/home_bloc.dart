import 'package:bloc/bloc.dart';
import 'package:motionhack/features/creator/entities/creator.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<HomeEventFetching>((event, emit) async {});
  }
}
