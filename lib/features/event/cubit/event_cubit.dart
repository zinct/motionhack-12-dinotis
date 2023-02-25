import 'package:bloc/bloc.dart';
import 'package:motionhack/features/creator/entities/creator.dart';
import 'package:motionhack/features/creator/model/creator_list_model.dart';
import 'package:motionhack/features/creator/repository/creator_repository.dart';
import 'package:motionhack/features/meeting/entities/meeting.dart';
import 'package:motionhack/features/meeting/model/meeting_list_model.dart';
import 'package:motionhack/features/meeting/repository/meeting_repository.dart';
import 'package:motionhack/features/user/entities/user.dart';
import 'package:motionhack/features/user/model/user_detail_model.dart';
import 'package:motionhack/features/user/repository/user_repository.dart';

part 'event_state.dart';

class EventCubit extends Cubit<EventState> {
  EventCubit() : super(EventState());
  CreatorRepository _creatorRepository = CreatorRepository();
  MeetingRepository _meetingRepository = MeetingRepository();

  void fetchData() async {
    emit(state.copyWith(status: EventStateStatus.loading));
    CreatorListModel creatorData = await _creatorRepository.getList();
    MeetingListModel meetingData = await _meetingRepository.getList();

    print("Fetching");

    emit(state.copyWith(
      status: EventStateStatus.done,
      creators: creatorData.creators,
      meetings: meetingData.meetings,
    ));
  }
}
