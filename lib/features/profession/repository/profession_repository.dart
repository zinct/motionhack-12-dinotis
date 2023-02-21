import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:motionhack/core/api.dart';
import 'package:motionhack/features/profession/model/profession_list_model.dart';

@JsonSerializable(explicitToJson: true)
class ProfessionRepository {
  Future<ProfessionListModel> getList() async {
    Response response = await Api().get(path: 'v1/professions');
    return ProfessionListModel.fromJson(response.data);
  }
}
