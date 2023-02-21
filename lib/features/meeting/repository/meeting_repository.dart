import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:motionhack/core/api.dart';
import 'package:motionhack/features/meeting/model/meeting_list_model.dart';

@JsonSerializable(explicitToJson: true)
class MeetingRepository {
  Future<MeetingListModel> getList() async {
    Response response = await Api().get(path: 'v1/meetings');
    return MeetingListModel.fromJson(response.data);
  }
}
