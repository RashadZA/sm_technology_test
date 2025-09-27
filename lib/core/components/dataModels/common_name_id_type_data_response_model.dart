import 'package:sm_technology_test/core/components/dataModels/common_response_model_for_id_name.dart';

class CommonNameIdTypeDataResponseModel {
  List<CommonResponseModelForIdName>? data;

  CommonNameIdTypeDataResponseModel({this.data});

  CommonNameIdTypeDataResponseModel.fromJson(
      Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <CommonResponseModelForIdName>[];
      json['data'].forEach((v) {
        data!.add(CommonResponseModelForIdName.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}