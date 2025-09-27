class ShortByItemResponseModel {
  List<ShortByItemDataModel>? data;

  ShortByItemResponseModel({this.data});

  ShortByItemResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ShortByItemDataModel>[];
      json['data'].forEach((v) {
        data!.add(ShortByItemDataModel.fromJson(v));
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

class ShortByItemDataModel {
  String? id;
  String? name;

  ShortByItemDataModel({this.id, this.name});

  ShortByItemDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}