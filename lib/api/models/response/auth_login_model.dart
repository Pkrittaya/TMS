class AuthLoginModel {
  String? status;
  String? timestamp;
  String? path;
  String? code;
  String? message;
  Data? data;

  AuthLoginModel(
      {this.status,
      this.timestamp,
      this.path,
      this.code,
      this.message,
      this.data});

  AuthLoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    timestamp = json['timestamp'];
    path = json['path'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['timestamp'] = this.timestamp;
    data['path'] = this.path;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? userName;
  String? type;
  String? token;

  Data({this.userName, this.type, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    type = json['type'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['type'] = this.type;
    data['token'] = this.token;
    return data;
  }
}
