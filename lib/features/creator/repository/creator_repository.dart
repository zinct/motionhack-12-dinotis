import 'package:dio/dio.dart';
import 'package:motionhack/core/api.dart';
import 'package:motionhack/features/creator/model/creator_detail_model.dart';
import 'package:motionhack/features/creator/model/creator_list_model.dart';

class CreatorRepository {
  Future<CreatorListModel> getList() async {
    Response response = await Api().get(path: 'v1/creators');
    return CreatorListModel.fromJson(response.data);
  }

  Future<CreatorDetailModel> getDetail(String id) async {
    Response response = await Api().get(path: 'v1/creators/$id');
    return CreatorDetailModel.fromJson(response.data);
  }
}
