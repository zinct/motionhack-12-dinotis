import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:motionhack/core/api.dart';
import 'package:motionhack/features/user/model/user_detail_model.dart';

@JsonSerializable(explicitToJson: true)
class UserRepository {
  Future<UserDetailModel> getDetail() async {
    Response response = await Api().get(path: 'v1/users');
    return UserDetailModel.fromJson(response.data);
  }
}
