import 'package:bloc/bloc.dart';
import 'package:motionhack/features/creator/entities/creator.dart';
import 'package:motionhack/features/creator/model/creator_list_model.dart';
import 'package:motionhack/features/creator/repository/creator_repository.dart';
import 'package:motionhack/features/meeting/entities/meeting.dart';
import 'package:motionhack/features/meeting/model/meeting_list_model.dart';
import 'package:motionhack/features/meeting/repository/meeting_repository.dart';
import 'package:motionhack/features/profession/entities/profession.dart';
import 'package:motionhack/features/profession/model/profession_list_model.dart';
import 'package:motionhack/features/profession/repository/profession_repository.dart';

part 'event_event.dart';
part 'event_state.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  CreatorRepository _creatorRepository = CreatorRepository();
  MeetingRepository _meetingRepository = MeetingRepository();
  ProfessionRepository _professionRepository = ProfessionRepository();

  EventBloc() : super(EventState()) {
    on<EventEventFetching>((event, emit) async {
      emit(state.copyWith(status: EventStateStatus.loading));
      CreatorListModel creatorData = await _creatorRepository.getList(null);
      MeetingListModel meetingData = await _meetingRepository.getList();
      ProfessionListModel professionData =
          await _professionRepository.getList();
      emit(state.copyWith(
        status: EventStateStatus.done,
        creators: creatorData.creators,
        topCreators: creatorData.creators,
        meetings: meetingData.meetings,
        professions: professionData.professions,
      ));
    });

    on<EventEventSearching>((event, emit) async {
      emit(state.copyWith(status: EventStateStatus.loading));
      CreatorListModel creatorData =
          await _creatorRepository.getList(event.creator);
      emit(state.copyWith(
        status: EventStateStatus.done,
        creators: creatorData.creators,
        search: event.creator,
      ));
    });
  }
}
