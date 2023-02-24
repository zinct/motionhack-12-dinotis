import 'package:bloc/bloc.dart';
import 'package:motionhack/features/creator/entities/creator.dart';
import 'package:motionhack/features/creator/model/creator_list_model.dart';
import 'package:motionhack/features/creator/repository/creator_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  CreatorRepository _creatorRepository = CreatorRepository();

  HomeBloc() : super(HomeState()) {
    on<HomeEventFetching>((event, emit) async {
      emit(state.copyWith(status: HomeStateStatus.loading));
      CreatorListModel data = await _creatorRepository.getList();
      print(data.creators);
      emit(state.copyWith(
        status: HomeStateStatus.done,
        creators: data.creators,
        topCreators: data.creators,
      ));
    });
  }
}
