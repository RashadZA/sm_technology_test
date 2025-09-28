import 'dart:async';

import 'package:sm_technology_test/core/API/helper/base_service.dart';
import 'package:sm_technology_test/modules/main/model/friends_data_model.dart';




class APICall with BaseService {
  void dispose() {}

  FutureOr<FriendListResponseModel> friendListResponse() async {
    return tryOrCatch<FriendListResponseModel>(() async {
      final response = await dio.get(
        '/api/?results=10'
      );
      return FriendListResponseModel.fromMap(response.data);
    });
  }
}