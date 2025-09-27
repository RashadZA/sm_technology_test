class LanguageResponseModel {
  int? status;
  String? message;
  List<LanguageDataModel>? data;

  LanguageResponseModel({this.status, this.message, this.data});

  LanguageResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <LanguageDataModel>[];
      json['data'].forEach((v) {
        data!.add(LanguageDataModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LanguageDataModel {
  String? languageName;
  String? languageCode;
  String? nativeName;
  String? countryCode;
  String? flagUrl;

  LanguageDataModel(
      {this.languageName,
        this.languageCode,
        this.nativeName,
        this.countryCode,
        this.flagUrl});

  LanguageDataModel.fromJson(Map<String, dynamic> json) {
    languageName = json['languageName'];
    languageCode = json['languageCode'];
    nativeName = json['nativeName'];
    countryCode = json['countryCode'];
    flagUrl = json['flagUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['languageName'] = languageName;
    data['languageCode'] = languageCode;
    data['nativeName'] = nativeName;
    data['countryCode'] = countryCode;
    data['flagUrl'] = flagUrl;
    return data;
  }
}