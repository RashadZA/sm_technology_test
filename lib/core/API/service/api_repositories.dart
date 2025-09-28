import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/API/service/api_call.dart';
import 'package:sm_technology_test/modules/main/model/friends_data_model.dart';

class APIRepository {
  final APICall apiCall = Get.put(APICall());

  void dispose() {
    apiCall.dispose();
  }

  Future<FriendListResponseModel> friendListResponse() async {
    try {
      return await apiCall.friendListResponse();
    } catch (e) {
      debugPrint(e.toString());
    }
    return FriendListResponseModel.fromMap({});
  }
}
